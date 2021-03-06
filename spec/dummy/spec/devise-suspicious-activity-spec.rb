require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'pry'
require 'devise'
require 'rails_helper'

describe "DeviseSuspiciousActivity" do
  let(:original_email) { 'user@gmail.com' }
  let(:user) { User.create(email: original_email, password: 'password') }

  describe "Email change" do
    before do
      ActionMailer::Base.deliveries = []
      user.email = 'changed@gmail.com'
      user.save!
      @mail = ActionMailer::Base.deliveries.last
    end

    it "had the correct email body" do
      expect(@mail.body.raw_source).to include("Hi #{original_email}")
      expect(@mail.body.raw_source).to include('We wanted to let you know that your email was changed')
    end

    it "sends one email" do
      expect(ActionMailer::Base.deliveries.count).to eq 1
    end

    it "sends the correct email to the correct address" do
      expect(@mail.to.first).to eq(original_email)
    end
  end

  describe "Password change" do
    before do
      ActionMailer::Base.deliveries = []
      user.password = "wegotcoders"
      user.save!
    end

    it "does not send any emails" do
      expect(ActionMailer::Base.deliveries.count).to eq 0
    end
  end
end
