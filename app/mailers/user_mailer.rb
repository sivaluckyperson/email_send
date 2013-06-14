class UserMailer < ActionMailer::Base
  default :from => "ryan@railscasts.com"
  
  def registration_confirmation(user)
    @user = user
    attachments["rails.pptx"] = File.read("#{Rails.root}/public/images/Terrapinn GES tech requirements.pptx")
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
  end
end
