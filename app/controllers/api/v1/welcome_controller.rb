module Api::V1
  class WelcomeController < SecuredController
   skip_before_action :authorize_request, only: [:index]
   
    def index
     @welcome = 'Welcome to my App!'
      render html: @welcome
    end
  end
end


