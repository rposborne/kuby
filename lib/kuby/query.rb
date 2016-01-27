module Kuby
  class Query
    attr_accessor :get_queries, :set_queries
    def initialize(link)
      @link = link
      @get_queries = []
      @set_queries = {}
    end

    def get(*array)
      self.get_queries = (get_queries + array).uniq
      self
    end

    def set(hash)
      self.set_queries.merge!(hash)
      self
    end

    def to_str
      call
    end

    def call
      @link.__send__(:call, build_string_query)
    end

    #
    #
    def build_string_query
      build.join('&')
    end

    def queries
      Hash[get_queries.map {|k| [k, nil]}].merge!(set_queries)
    end

    def build
      queries.each_with_index.map{|h,i| "#{i}=#{Kuby::Link::API_MAP[h[0]]}#{set_string(h[1])}"}
    end

    def set_string(*args)
      return nil if args[0].nil?
      "[#{args.join(',')}]"
    end
  end
end
