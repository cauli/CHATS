class MessagesController < ApplicationController
    before_action :set_room

    def create
        @message = Message.new(message_params)
        @message.user = current_user
        @message.room = @room
        
        respond_to do |format|
            if @message.save
                format.html { redirect_to room_url(@room), notice: "Message was successfully created." }
                format.json { render :show, status: :created, location: @room }
            else
                format.html { redirect_to room_url(@room), alert: "Message was not created." }
                format.json { render json: @message.errors, status: :unprocessable_entity }
            end
        end
    end

    private

    def set_room
        @room = Room.find(params[:room_id])
    end

    def message_params
        params.require(:message).permit(:content)
    end
end
