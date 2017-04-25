module ApplicationHelper
  def fix_url(str)
    str.starts_with?('http://') ? str : "http://#{str}"
  end
  
  def display_datetime(dt)
    dt.strftime("%m/%d/%Y %l:%M%P %Z") # 03/14/2013 9:09pm
  end

  def preserve_linebreak(text)
    text.gsub("\r\n", "<br />").html_safe
  end
end
