class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  def update
    @user = current_user
    @user = User.find(current_user.id)

    if params[:user][:profile_picture].present?
      @user.profile_picture.attach(params[:user][:profile_picture])
    end

    if @user.update(user_params)
      redirect_to root_path, notice: 'Perfil actualizado correctamente.'
    else
      render :edit
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
  
  def sign_up_params
    params.require(:user).permit(:profile_picture,:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:profile_picture,:name, :email, :password, :password_confirmation, :current_password)
  end
end
