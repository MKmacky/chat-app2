class UsersController < ApplicationController

  def edit
  end

  def update
    current_user.update(user_params)
  end

  private

  def user_params
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

end
