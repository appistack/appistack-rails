class SoundsController < BaseController
  respond_to :json

  #TODO: filter sounds by artist

  def index
    respond_with Sound.all
  end

  def show
    respond_with Sound.find(params[:id])
  end

end