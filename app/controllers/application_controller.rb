class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  protect_from_forgery with: :exception
  
  before_action :authenticate_user!
   
  private

  def record_not_found
    # handle redirect
    redirect_to '/static_page/summary'
  end
   
end
