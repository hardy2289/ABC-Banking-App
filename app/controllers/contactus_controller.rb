class ContactusController < ApplicationController
  skip_before_action :authenticate_user!,[:contactus]
  def contactus
  end
end
