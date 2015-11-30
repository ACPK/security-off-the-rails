class DeviseCustom::RegistrationsController < Devise::RegistrationsController

  private

  def user_params
    [:email, :username, :password, :password_confirmation]
  end

  def sign_up_params
    params.require(:user).permit(user_params)
  end

  def account_update_params
    params.require(:user).permit(user_params)
  end
end
