class Newsletter < ApplicationRecord
  def send_email(newsletter)
    @newsletter = newsletter
    emails = Users.select("email")
    @emails.each do |u|
        mail(:to => " <#{u.email}>", :subject => @newsletter.title)
    end
  end

end
