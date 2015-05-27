class ArtistsController < BaseController
  respond_to :json

  #TODO: include sounds nested within artist

  def index
    respond_with Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    respond_with @artist do |format|
      format.json { render json: @artist.to_json(include: :sounds) }
    end
  end

end