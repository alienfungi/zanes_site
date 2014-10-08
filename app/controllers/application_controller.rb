include SessionsHelper

# Contains methods used in more than one controller.
# All controllers extend this one.
class ApplicationController < ActionController::Base
  before_action :create_session_form_object

  rescue_from 'ActiveRecord::RecordNotFound' do |exception|
    render 'layouts/record_not_found'
  end

  private

  def create_session_form_object
    @session_form = SessionForm.new
  end

  def render_404
    raise ActionController::RoutingError.new('F++')
  end
end
