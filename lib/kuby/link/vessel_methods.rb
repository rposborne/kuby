module Kuby
  class Link
    module VesselMethods
      def altitude
        api_get(API_MAP[:altitude]).to_f
      end

      def height
        api_get(API_MAP[:height]).to_f
      end

      def terrain_height
        api_get(API_MAP[:terrain_height]).to_f
      end

      def mission_time
        api_get(API_MAP[:mission_time]).to_f
      end

      def surface_velocity
        api_get(API_MAP[:surface_velocity]).to_f
      end

      def surface_velocity_x
        api_get(API_MAP[:surface_velocity_x]).to_f
      end

      def surface_velocity_y
        api_get(API_MAP[:surface_velocity_y]).to_f
      end

      def surface_velocity_z
        api_get(API_MAP[:surface_velocity_z]).to_f
      end

      def angular_velocity
        api_get(API_MAP[:angular_velocity]).to_f
      end

      def orbital_velocity
        api_get(API_MAP[:orbital_velocity]).to_f
      end

      def surface_speed
        api_get(API_MAP[:surface_speed]).to_f
      end

      def vertical_speed
        api_get(API_MAP[:vertical_speed]).to_f
      end

      def atmospheric_density
        api_get(API_MAP[:atmospheric_density]).to_f
      end

      def lat
        api_get(API_MAP[:lat])
      end

      def long
        api_get(API_MAP[:long])
      end

      def dynamic_pressure
        api_get(API_MAP[:dynamic_pressure]).to_f
      end

      def name
        api_get(API_MAP[:name])
      end
    end
  end
end
