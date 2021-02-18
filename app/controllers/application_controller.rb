class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  
    def current_gym_rat
        @current_gym_rat ||= GymRat.find_by(id: session[:gym_rat_id])
      end
    helper_method :current_gym_rat
  end