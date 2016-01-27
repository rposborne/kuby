module Kuby
  class Link
    module ApiMethods
      def version
        Gem::Version.new api_get(API_MAP[:version])
      end
    end
  end
end
