require 'multi_json'
require 'excon'
require 'kuby/link/api_map'
require 'kuby/query'
require 'kuby/link/api_methods'
require 'kuby/link/flight_methods'
require 'kuby/link/navball_methods'
require 'kuby/link/paused_methods'
require 'kuby/link/resource_methods'
require 'kuby/link/vessel_methods'
require 'kuby/link/mechjeb_methods'

class Kuby::Link
  MIN_TELEMACHUS_VERSION = Gem::Version.new('1.4.6.0')

  attr_reader :host, :port, :query

  include Kuby::Link::ApiMethods
  include Kuby::Link::FlightMethods
  include Kuby::Link::NavballMethods
  include Kuby::Link::PausedMethods
  include Kuby::Link::ResourceMethods
  include Kuby::Link::VesselMethods
  include Kuby::Link::MechjebMethods

  def initialize(options = {})
    @host = options.fetch(:host, '127.0.0.1')
    @port = options.fetch(:port, 8085).to_i
    @path = 'telemachus/datalink'
  end

  def connect!
    # Raise error when the telemachus version is not supported, this also automatically
    # checks if the connection can be made
    unless supported_version?
      fail Kuby::UnsupportedTelemachusVersion.new("Please install Telemachus #{MIN_TELEMACHUS_VERSION} or higher")
    end

    true
  end

  def set(*args)
    chain_set(*args)
  end

  def get(*args)
    chain_get(*args)
  end

  private

  def api_set(ret, *args)
    call("r=#{ret}[#{args.join(',')}]")[:r]
  end

  def api_get(ret)
    call("r=#{ret}")[:r]
  end

  # chain(:pitch, :yaw, :roll)
  def chain_set(*args)
    @query ||= Kuby::Query.new(self)
    @query.set(*args)
    @query
  end

  # chain(:pitch, :yaw, :roll)
  def chain_get(*args)
    @query ||= Kuby::Query.new(self)
    @query.get(*args)
    @query
  end

  def call(query_string)
    res = Excon.get(uri, tcp_nodelay: true, query: query_string)

    # Parse the result
    data = MultiJson.load(res.body, symbolize_keys: true)

    data
  rescue Excon::Errors::SocketError, Errno::ECONNREFUSED
    # Catch different kinds of connection refused and raise custom exception
    raise Kuby::TelemachusConnectionRefused
  end

  def supported_version?
    version >= MIN_TELEMACHUS_VERSION
  end

  def uri
    @uri ||= "http://#{@host}:#{@port}/#{@path}"
  end
end
