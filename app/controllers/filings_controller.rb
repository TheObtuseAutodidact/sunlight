class FilingsController < ApplicationController
  def index
   @filings = Filing.all
  end
end
