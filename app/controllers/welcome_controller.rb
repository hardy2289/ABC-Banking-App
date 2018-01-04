 class WelcomeController < ApplicationController
   skip_before_action :authenticate_user!, [:index]
  def index
  end
end
