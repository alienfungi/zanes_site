# Used for the login page to transport user login info
class SessionForm < Form
  attr_accessor :username, :password
  validates_presence_of :username, :password
end
