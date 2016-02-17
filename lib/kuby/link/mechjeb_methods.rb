module Kuby
  class Link
    module MechjebMethods
      # Smart ASS Off
      # Not Plotable
      def smart_ass_off
        api_get(API_MAP[:smart_ass_off]).to_f
      end

      # Node
      # Not Plotable
      def node
        api_get(API_MAP[:node]).to_f
      end

      # Prograde
      # Not Plotable
      def prograde
        api_get(API_MAP[:prograde]).to_f
      end

      # Retrograde
      # Not Plotable
      def retrograde
        api_get(API_MAP[:retrograde]).to_f
      end

      # Normal Plus
      # Not Plotable
      def normal_plus
        api_get(API_MAP[:normal_plus]).to_f
      end

      # Normal Minus
      # Not Plotable
      def normal_minus
        api_get(API_MAP[:normal_minus]).to_f
      end

      # Radial Plus
      # Not Plotable
      def radial_plus
        api_get(API_MAP[:radial_plus]).to_f
      end

      # Radial Minus
      # Not Plotable
      def radial_minus
        api_get(API_MAP[:radial_minus]).to_f
      end

      # Target Plus
      # Not Plotable
      def target_plus
        api_get(API_MAP[:target_plus]).to_f
      end

      # Target Minus
      # Not Plotable
      def target_minus
        api_get(API_MAP[:target_minus]).to_f
      end

      # Relative Plus
      # Not Plotable
      def relative_plus
        api_get(API_MAP[:relative_plus]).to_f
      end

      # Relative Minus
      # Not Plotable
      def relative_minus
        api_get(API_MAP[:relative_minus]).to_f
      end

      # Parallel Plus
      # Not Plotable
      def parallel_plus
        api_get(API_MAP[:parallel_plus]).to_f
      end

      # Parallel Minus
      # Not Plotable
      def parallel_minus
        api_get(API_MAP[:parallel_minus]).to_f
      end

      # Surface [float heading, float pitch]
      # Not Plotable
      def surface(pitch:, heading:, roll:)
        args = [
          degree_to_f(heading),
          degree_to_f(pitch),
          degree_to_f(roll),
        ]
        api_set(API_MAP[:surface], args)
      end

      # Surface [double heading, double pitch, double roll]
      # Not Plotable
      def surface2(pitch:, heading:, roll:)
        args = [
          degree_to_f(heading),
          degree_to_f(pitch),
          degree_to_f(roll),
        ]
        api_set(API_MAP[:surface2], args)
      end

    end
  end
end
