require "rails_helper"

RSpec.describe JsonMailer, :type => :mailer do
  it 'send an email given the post request' do 
    email = JsonMailer.send_email(["<Matteo> matteo@as.com", "<Ju> ju@as.com"],
                                  "<Tor> tor@as.com",
                                   "Test Subject",
                                    "# Test Body").deliver

  end

end
