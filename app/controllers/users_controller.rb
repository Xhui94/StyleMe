class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
    @contactInfo = UserContact.find_or_create_by(user_id: params[:id])
  end

  def update
    # Create user_ca to sanitize our hash to proper "contacts" attributes
		@user_ca = user_contact_params["user_contact_attributes"]
		@user_ca[:type_country_id] = @user_ca.delete :type_countries
		@user_ca[:type_country_id] = @user_ca[:type_country_id][:id]
		@user_ca[:type_region_id] = @user_ca.delete :type_regions
		@user_ca[:type_region_id] = @user_ca[:type_region_id][:id]

    # Edit function variables, in case of failed validations and we re-render :edit
		@user = User.find_by(id: current_user.id) #Find the User corresponding to user_id
		# Using the user_id find/create the record and assing the attributes to @contactInfo
		@contactInfo = UserContact.find_or_initialize_by(user_id: current_user.id).attributes
		@user.user_contact.update(@contactInfo) #Build the form using @contactInfo

		# Find contacts record or create them if necessary
		@contact = UserContact.find_or_create_by(user_id: current_user.id)

		# Try to save it, if it saves, then redirect to the edit page with success
		if @contact.update_attributes(@user_ca)
		    flash[:success] = "Profile updated"
		    redirect_to edit_user_path(@user.id)
	    else # Failed. Re-render the page as unsucessful
	        render :edit
		end
  end

  private

  def user_contact_params
    params.require(:user).permit(:email, :user_contact_attributes => [:address1, :address2, :city, {type_countries: :id}, {type_regions: :id}, :postal_code, :business_number, :cell_number, :user_id, :avatar])
  end
end
