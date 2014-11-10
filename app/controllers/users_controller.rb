class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	#debugger -This line is for Ruby version 4.2 (which I haven't upgraded to yet)
  end

  def new
  end
end
