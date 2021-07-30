class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  helper_method :today_number_of_tasks

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  def today_number_of_tasks
    return 0 unless user_signed_in? && current_user.balcony

    @today_number_of_tasks ||= current_user.balcony.tasks.where("due_date = ?", Date.today).
      where(completed: false).count
  end
end
