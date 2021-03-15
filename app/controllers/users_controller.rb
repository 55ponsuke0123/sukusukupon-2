class UsersController < ApplicationController
def new
  @user = User.new
end

def create
  @user = User.new(user_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
end

private

def user_params
  params.require(:user).permit(:email,:password,:child_name,:classroom,:childminder1,:childminder2,:childminder3).merge(user_id: current_user.id)
end

end
