# Controls creation and sending of e-mail messages to myself
class ContactMessagesController < ApplicationController
  def new
    @contact_message = ContactMessage.new
  end

  def create
    @contact_message = ContactMessage.new(contact_message_params)
    notification = if @contact_message.valid?
                     send_contact_message
                   else
                     { alert: 'Invalid information.' }
                   end
    redirect_to(contact_url, flash: notification)
  end

  private

  def contact_message_params
    params.require(:contact_message).permit(:name, :email, :message)
  end

  def send_contact_message
    ContactMessageMailer.contact_message_email(@contact_message).deliver
    { success: 'Message submitted.' }
  rescue
    { error: 'Message failed to submit.' }
  end
end
