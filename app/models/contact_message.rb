# Basic contact form model, used to send messages via e-mail to me
class ContactMessage
  include ActiveModel::Model

  attr_accessor :name, :email, :message

  validates_presence_of :email, :name
end
