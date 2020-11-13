module Api::V1
  class HousesController < SecuredController
    def index
      render json: House.all
    end
    def create
      house = House.create!(house_params)
      render json: house, status: :created
    end
    def show
      @house = House.find(params[:id])
      return render json: @house, status: :ok if @house
    end
    private
    def house_params
      params.permit(:description, :name, :image)
    end
  end
end


