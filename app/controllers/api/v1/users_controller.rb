module Api::V1
  class UsersController < SecuredController
    before_action :set_user, only: %i[create]
    def create
      return render json: @user, status: :ok if @user

      user = User.create!(user_params)
      render json: user, status: :created
    end

    def show
      @user = User.find(params[:id])
      return render json: @user.houses, status: :ok if @user
    end

    def new_favourite
      @user = User.find_by(id: favourite_params[:user_id])
      @house = House.find_by(id: favourite_params[:house_id])
      favourite = Favourite.create!(favourite_params)
      render json: favourite, status: :created
    end

    private

    def set_user
      @user = User.find_by(email: params[:email])
    end

    def user_params
      params.permit(:username, :email)
    end

    def favourite_params
      params.permit(:house_id, :user_id)
    end
  end
end
