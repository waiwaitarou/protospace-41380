class UsersController < ApplicationController
  def show
    @Users = User.find(params[:id])
  end
end