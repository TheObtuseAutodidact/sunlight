class Filing
  attr_reader :service
  # controller ###
  # def index
  #   @filings = Filing.all
  # end

  def self.service
    @service ||= SunlightService.new
  end

  def self.all
    service.new_filing
  end

end
