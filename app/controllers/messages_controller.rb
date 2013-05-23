include ActionView::Helpers::DateHelper
class MessagesController < ApplicationController

  def create
    @message = current_user.messages.create!(params[:message])
    PrivatePub.publish_to("/messages/new", :message => @message.msg,
                          :creator => @message.user.first_name.to_s + " " + @message.user.last_name.to_s,
                          :time => @message.created_at.in_time_zone("Asia/Kolkata").strftime("%d %b, %a %I:%M %p"),
                          :author_id => @message.user_id
    )
  end
end
