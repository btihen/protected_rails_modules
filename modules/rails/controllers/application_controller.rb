class ApplicationController < ActionController::Base
  append_view_path(Dir.glob(Rails.root.join('modules/*/views')))
end
