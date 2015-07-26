class UsersController < BaseController
  respond_to :json

  def index
    respond_with User.all
  end

  def show
    respond_with User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.id == current_user.id
      @user.update!(user_params)
      redirect_to @user, status: 303
    else
      render json: { status: 'error' }, status: 403
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :nickname)
  end
end
