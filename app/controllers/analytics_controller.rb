class AnalyticsController < ApplicationController
  before_action :set_token

  def index
    @short_urls = ShortUrl.all
  end
end
