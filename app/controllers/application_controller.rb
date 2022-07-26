class ApplicationController < ActionController::Base
    before_action :fetch_user

    def fetch_user
        @current_user = User.find_by :id => session[:user_id] if session[:user_id].present?
        session[:user_id] = nil unless @current_user.present? # Log out non-existent users.
    end

    def check_for_login
        redirect_to login_path unless @current_user.present?
    end

    def check_for_admin
        redirect_to login_path unless (@current_user.present? && @current_user.admin?)
    end

    # spent hours trying to work the below code out with Loden, ended up breaking it.. RIP. 
    #However, managed to find another way to do it!

    # def check_for_owner (gig)
    #     redirect_to root_path if ( @current_user.nil? || (@current_user != gig.user && !@current_user.admin?) )
    # end

    # def check_for_owner (user)
    #     redirect_to root_path if ( @current_user.nil? || (@current_user != user && !@current_user.admin?) )
    # end

    def all_users
        @user = User.all
    end

end