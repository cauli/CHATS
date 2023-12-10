class SessionsController < ApplicationController
    def new
    end

    # create a session means "sign in"
    def create
        user = User.where('name LIKE ?', params[:name]).first
        if user
            session[:user_id] = user.id
            redirect_to root_path
        else
            user = User.create(name: params[:name])
            if user.valid?
                session[:user_id] = user.id
                redirect_to root_path
            else
                format.html { render :new, status: :unprocessable_entity }
            end
        end
    end

    # to destroy a session means "sign out"
    def destroy
        session[:user_id] = nil
        redirect_to login_path
    end
end