class Post < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :subject, :body
end
