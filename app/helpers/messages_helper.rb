
module MessagesHelper
  def recipients_options
    s = ''
    User.all.each do |user|
      s << "<option value='#{user.id}'>#{user.username}</option>"
    end
    s.html_safe
  end

  def recipient
    s = ''
    User.where(id: params['recipients']).each do |user|
      s << "<option value='#{user.id}'>#{user.username}</option>"
    end
    s.html_safe
  end


end