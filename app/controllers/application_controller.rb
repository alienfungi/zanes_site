class ApplicationController < ActionController::Base

  before_action :set_header_links

  rescue_from 'ActiveRecord::RecordNotFound' do |exception|
    render 'layouts/record_not_found'
  end

private

  def set_header_links
    @header_links = {
      "Home" => root_path,
      "Java" => java_path,
      "Rails" => rails_path,
      "Resume" => resume_path,
      "Contact" => contact_path
    }
  end
end
