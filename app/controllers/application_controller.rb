class ApplicationController < ActionController::Base
    before_action :redirect_if_not_logged_in

    helper_method :current_learner, :logged_in?

    private
    def current_learner
        @current_learner ||= Learner.find_by(id:session[:learner_id]) if session[:learner_id]
    end

    def logged_in?
        !!current_learner
    end

    def redirect_if_not_logged_in
        redirect_to login_path if !logged_in?
    end
end
