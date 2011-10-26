class UserMailer < ActionMailer::Base

  FEEDBACK_EMAIL = "dorotawnuk11@o2.pl"

  def feedback_email(feedback)
    @feedback = feedback
    mail(:from => feedback.username, :to => FEEDBACK_EMAIL,
      :subject => "Skauting Jurajski - Wiadomość z serwisu")
  end

end
