class NewsletterController < ApplicationController

  def create
    @newsletter=newsletter
    @newsletter = Newsletter.new(params[:newsl])
           if(request.post? and @newsletter.save)
                 flash[:notice] = “Newsletter Created Successfully”
                 Newsletter.send_email(newsletter)
           end
  end
end
