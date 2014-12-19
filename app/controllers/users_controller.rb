class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	#debugger -This line is for Ruby version 4.2 (which I haven't upgraded to yet)
  end

  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome " + @user.name + "."
    	redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
