class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception #CSRF対策

  before_action :authenticate_user! #アクションを実行する前にフィルターをかけるメソッド
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sigh_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
end
