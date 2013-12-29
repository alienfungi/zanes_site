# Contains methods used in more than one controller.
# All controllers extend this one.
class ApplicationController < ActionController::Base
  rescue_from 'ActiveRecord::RecordNotFound' do |exception|
    render 'layouts/record_not_found'
  end
end
