class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_api_keys

  def set_api_keys
    @api_key = ENV['STRIPE_TEST_KEY']
    @recaptcha_key = ENV['CAPTCHA_KEY']
  end
end
