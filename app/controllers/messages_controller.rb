class MessagesController < ApplicationController
    def create
        @message = Message.new(message_params)
        @message.user = current_user
        @message.room = @room
        if @message.save
            redirect_to room_url(@room)
        else
            render :new
        end
    end

    private

    def message_params
        params.require(:message).permit(:content)
    end
end
