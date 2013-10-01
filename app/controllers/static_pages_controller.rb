class StaticPagesController < ApplicationController
  def home
  end

  def contact
    @contact_message = ContactMessage.new
  end

  def resume
  end

  def java
  end

  def packman
    session[:return_to] = packman_path
  end

  def cars
  end
end
