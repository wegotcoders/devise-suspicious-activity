require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'pry'
require 'devise'
require 'rails_helper'

describe "DeviseSuspiciousActivity" do
  before do
    @user = User.create(email: 'user@gmail.com', password: 'password')
    @user.email = 'changed@gmail.com'
    @user.save!
  end

  it "sends two emails" do
    expect(ActionMailer::Base.deliveries.count).to eq 2
    # Test email body and email sent address
  end

  it "sends the correct email to the correct address" do
    # old address matches the 'your email has changed'
    # new address matches 'this is your new email'
  end
end
