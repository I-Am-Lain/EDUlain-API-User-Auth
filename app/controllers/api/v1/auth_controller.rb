class Api::V1::AuthController < ApplicationController

    def create
        user = User.find_by(username: params[:username])

        if user && user.authenticate(params[:password])
            render json: {id: user.id, username: user.username}
        else
            render json: { error: 'Invalid Username/Password' }, status: 401
        end
    end

end
