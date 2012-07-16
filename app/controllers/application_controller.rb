class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_locale
  

  def set_locale
    #begin
      if params[:locale].present?
        session[:locale] = I18n.locale = params[:locale]
        redirect_to request.referer
      elsif session[:locale].present?
        I18n.locale = session[:locale]
      else
        Rails.logger.info "--------------------------------------------1"
        
        browser_locale = request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
        Rails.logger.info "--------------------------------------------1"

        if browser_locale.present? && AVAILABLE_LANGUAGES.include?(browser_locale.to_sym)
                  Rails.logger.info "--------------------------------------------2"
          session[:locale] = I18n.locale = browser_locale
        else
          Rails.logger.info "--------------------------------------------3"
          session[:locale] = I18n.locale = "pl"
        end
      end      
   # rescue
   #   Rails.logger.info "--------------------------------------------4"
   #   redirect_to "/"
   # end
  end

end
