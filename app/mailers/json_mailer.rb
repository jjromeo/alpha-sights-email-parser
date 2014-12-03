class JsonMailer < ActionMailer::Base
  default from: "from@example.com"

  def send_email(recipients, from, subject, body)
      mail(to: recipients, from: from, subject: subject, body: body)
  end



end
