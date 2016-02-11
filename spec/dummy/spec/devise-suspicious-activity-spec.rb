require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'pry'
require 'devise'
require 'rails_helper'

describe "DeviseSuspiciousActivity" do
  before do
    @original_email = 'user@gmail.com'
    @user = User.create(email: @original_email, password: 'password')
    @user.email = 'changed@gmail.com'
    @user.save!
  end

  it "sends one email" do
    mail = ActionMailer::Base.deliveries.last
    expect(ActionMailer::Base.deliveries.count).to eq 1
    expect(mail.body.raw_source).to include('We wanted to let you know that your email was changed')
    expect(mail.to.first).to eq(@original_email)
    # Test email body and email sent address
  end

  it "sends the correct email to the correct address" do
    # old address matches the 'your email has changed'
    # new address matches 'this is your new email'
  end
end
