module Api::V1
  class HousesController < SecuredController
   
    def index
      render json: House.all
    end
    
    def show
      @house = House.find(params[:id])
      return render json: @house, status: :ok if @house
    end
    
  end
end


