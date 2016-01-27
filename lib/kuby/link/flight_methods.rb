module Kuby
  class Link
    module FlightMethods
      def abort
        api_get(API_MAP[:abort])
      end

      # Define a method for each of the 10 action groups
      (1..10).each do |group_no|
        define_method "actiongroup_#{group_no}" do
          api_get(API_MAP["actiongroup_#{group_no}".to_sym])
        end
      end

      def brake
        api_get(API_MAP[:brake])
      end

      def yaw=(yaw)
        api_set(API_MAP[:set_yaw], degree_to_f(yaw))
      end

      def pitch=(pitch)
        api_set(API_MAP[:set_pitch], degree_to_f(pitch))
      end

      def roll=(roll)
        api_set(API_MAP[:set_roll], degree_to_f(roll))
      end

      def fly_by_wire=(state)
        api_set(API_MAP[:fly_by_wire], state ? 1 : 0)
      end

      # One command set everything
      # [float pitch, yaw, roll, x, y, z]
      def pitch_yaw_roll_xyz=(pitch:, yaw:, roll:, x:, y:, z:)
        args = [
          degree_to_f(pitch),
          degree_to_f(yaw),
          degree_to_f(roll),
          limiter(x, max: 1.0, min: 0.0),
          limiter(y, max: 1.0, min: 0.0),
          limiter(z, max: 1.0, min: 0.0)
        ]
        api_set(API_MAP[:pitch_yaw_roll_xyz], args)
      end

      def set_throttle(t)
        api_set('f.setThrottle', limiter(t, max: 1.0, min: 0.0))
      end

      def stage!
        api_get(API_MAP[:stage!])
      end

      def throttle
        api_get(API_MAP[:throttle]).to_f
      end

      def throttle_down
        api_get(API_MAP[:throttle_down])
      end

      def throttle_up
        api_get(API_MAP[:throttle_up])
      end

      def throttle_full
        api_get(API_MAP[:throttle_full])
      end

      def throttle_zero
        api_get(API_MAP[:throttle_zero])
      end

      def toggle_gear
        api_get(API_MAP[:toggle_gear])
      end

      def toggle_light
        api_get(API_MAP[:toggle_light])
      end

      def toggle_rcs
        api_get(API_MAP[:toggle_rcs])
      end

      def toggle_sas
        api_get(API_MAP[:toggle_sas])
      end

      def g_force
        api_get(API_MAP[:g_force])
      end

      private

      # Degrees as float -180 -> 180
      # returns -1 -> 1
      def degree_to_f(degree)
        fail ArgumentError unless degree.is_a? Numeric
        limiter(degree / 180, max: 1.0, min: -1.0)
      end

      def limiter(value, max:, min:)
        fail ArgumentError unless value.is_a? Numeric
        value = value.to_f
        if value > max
          max
        elsif value < min
          min
        else
          value
        end
      end
    end
  end
end
