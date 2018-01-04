class BranchController < ApplicationController
  skip_before_action :authenticate_user!,[:branch]
  def branch
  end
end
