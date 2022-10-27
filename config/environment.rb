# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# dont change fields to field_with_errors
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  html_tag.html_safe
end