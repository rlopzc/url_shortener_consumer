class ShortUrlsController < ApplicationController
  before_action :set_short_url, only: [:show, :edit, :update, :destroy]
  before_action :set_token

  # GET /short_urls
  # GET /short_urls.json
  def index
    @short_urls = ShortUrl.all
  end

  # GET /short_urls/1
  def show
  end

  # GET /short_urls/new
  def new
    @short_url = ShortUrl.new
  end

  # GET /short_urls/1/edit
  def edit
  end

  # POST /short_urls
  def create
    @short_url = ShortUrl.new(short_url_params)

    if @short_url.save
      redirect_to @short_url, notice: 'Short url was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /short_urls/1
  def update
    if @short_url.update(short_url_params)
      redirect_to @short_url, notice: 'Short url was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /short_urls/1
  def destroy
    @short_url.destroy
    redirect_to short_urls_url, notice: 'Short url was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_short_url
      @short_url = ShortUrl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def short_url_params
      params.require(:short_url).permit(:original, :converted).to_h
    end
end
