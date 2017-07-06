class UsersController < ApplicationController

  def index
    UserMailer.example(User.new(email: 'bo@samurails.com')).deliver
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @image = @user.images
  end

  def new
    @user = User.find(params[:id])
    @image = @user.images.new
    if @image.new
      redirect_to user_path(@image.user)
    else
      redirect_to user_path(@user)
    end
  end
end
