# Sessions Controller
# handles user login/logout by adding/removing users to the session
class SessionsController < ApplicationController
  def create
    @session_form = SessionForm.new(session_params)
    if @session_form.valid?
      user = User.find_by_username(@session_form.username)
      if user.try(:authenticate, @session_form.password)
        sign_in(user)
        flash[:notice] = 'You are now logged in.'
      end
    end
    redirect_to :back
  end

  def destroy
    begin
      sign_out
      flash[:notice] = 'You are now logged out.'
    rescue
      flash[:alert] = 'Failed to logout.'
    end
    redirect_to :back
  end

  private

  def session_params
    params.require(:session_form).permit(:username, :password)
  end
end
