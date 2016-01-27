module Kuby
  class Link
    module NavballMethods
      def heading
        api_get(API_MAP[:heading]).to_f
      end

      def pitch
        api_get(API_MAP[:pitch]).to_f
      end

      def roll
        api_get(API_MAP[:roll]).to_f
      end
    end
  end
end
