class SunlightService
  attr_reader :connection

  def initialize
    @connection = Faraday.new("http://realtime.influenceexplorer.com/api")
  end

  def new_filing
    JSON.parse(connection.get("new_filing").body)
  end

end
