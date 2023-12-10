class RoomUsersController < ApplicationController
    def create
        @room = Room.find(params[:room_id])
        @room_user = @room.room_users.where(user_id: current_user.id).first_or_create
        redirect_to @room
    end
end
