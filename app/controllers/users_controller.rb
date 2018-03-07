class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
    @contactInfo = UserContact.find_or_initialize_by(user_id: params[:id])
    @user.build_user_contact(@contactInfo.attributes)
  end
end
