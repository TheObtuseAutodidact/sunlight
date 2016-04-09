class SunlightService
  attr_reader :connection
  def initialize
    @connection = Faraday.new("http://realtime.influenceexplorer.com/api//")
    connection.params['apikey'] = ENV['apikey']
  end

  def new_filing
    JSON.parse(connection.get("new_filing/?format=json&page=1&page_size=10").body)
  end

end
