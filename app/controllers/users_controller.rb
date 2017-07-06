class UsersController < ApplicationController

  def index
    UserMailer.example(User.new(email: 'bo@samurails.com')).deliver
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
end
