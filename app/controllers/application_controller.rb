class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :set_locale
  
 
  def set_locale
    cookies[:locale] = params[:locale] if params[:locale]
    I18n.locale = params[:locale] || cookies[:locale] || I18n.default_locale
    @en = 'active' if I18n.locale == :en
    @hu = 'active' if I18n.locale == :hu
  end
  
  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

end
