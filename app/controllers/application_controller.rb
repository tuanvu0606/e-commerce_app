class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include CurrentOrder
  before_action :set_order
  #before_action :authenticate_user!, except: [:home, :articles]  
  #helper_method :current_order

  #def current_order
  #  if !session[:order_id].nil?
  #    Order.find(session[:order_id])
  #  else
  #    Order.new
  #  end
  #  binding.pry
  #end
  
end
