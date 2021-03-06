# Helper methods used throught the site
module ApplicationHelper
  BASE_TITLE = "Zane's Site"

  def full_title(page_title = '')
    if page_title.empty?
      BASE_TITLE
    else
      "#{ BASE_TITLE } | #{ page_title }"
    end
  end

  # sets heading to :heading, :title, or "Zane's Site" in that priority
  def heading(page_heading = '', page_title = '')
    if page_heading.empty? && page_title.empty?
      BASE_TITLE
    elsif page_heading.empty?
      page_title
    else
      page_heading
    end
  end

  def flash_class(type)
    'alert alert-' +
      case type
      when :success then 'success'
      when :notice then 'info'
      when :alert then 'warning'
      when :error then 'danger'
      else 'invalid-type'
    end
  end

  def header_links
    {
      'Home' => root_path,
      'Words' => posts_path,
      'Ruby' => rails_path,
      'Packman' => packman_path,
      'Resume' => resume_path,
      'Contact' => contact_path
    }
  end
end
