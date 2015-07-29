class UsersController < BaseController
  respond_to :json

  def index
    respond_with User.all.as_json(except: [:email, :uid])
  end

  def show
    @user = User.find(params[:id])
    filtered_user_fields = @user.id == current_user.id ? [] : [:email, :uid]
    respond_with @user.as_json(except: filtered_user_fields)
  end

  def update
    @user = User.find(params[:id])

    if @user.id == current_user.id
      @user.update!(user_params)
      respond_with @user
    else
      render json: { status: 'error' }, status: 403
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :nickname)
  end
end
