module Api::V1
  class WelcomeController < SecuredController
   skip_before_action :authorize_request, only: [:index]

   def index
   end
  end
end
