class ArtistsController < BaseController
  respond_to :json

  #TODO: include sounds nested within artist

  def index
    respond_with Artist.all
  end

  def show
    respond_with Artist.find(params[:id])
  end

end