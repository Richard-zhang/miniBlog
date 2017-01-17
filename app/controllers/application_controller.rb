# Application Controller
class ApplicationController < ActionController::Base
  add_flash_types :error, :notice
  protect_from_forgery with: :exception
end
