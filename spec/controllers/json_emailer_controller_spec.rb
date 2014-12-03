require 'rails_helper'

RSpec.describe JsonEmailerController, :type => :controller do

    it 'can take in params given' do 
        post(:create, {recipients: 'james@james.com', from: 'Jerome@gmail.com', subject: 'blabla', body: 'Some body' } )
        expect(ActionMailer::Base.deliveries).not_to be_empty
    end
end
