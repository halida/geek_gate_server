module ApplicationHelper
  def format_date t
    t.strftime "%Y-%m-%d"
  end

  def mobile?
    params[:mobile] or cookies[:mobile]
  end
end
