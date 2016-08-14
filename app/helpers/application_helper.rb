module ApplicationHelper
  def page_title(title = nil)
    if title.present?
      "#{title} | #{OgiharaRyo::Application.config.title}"
    else
      OgiharaRyo::Application.config.title
    end
  end
end
