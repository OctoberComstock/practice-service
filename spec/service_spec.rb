require File.dirname(__FILE__) + '/../service'
require 'spec'
require 'spec/interop/test'
require 'rack/test'

set :environment, :test
Test::Unit::TestCase.send :include, Rack::Test::Methods

def app
  Sinatra::Application
end

describe "service" do
  before do
    User.delete_all
  end

  describe "GET /api/v1/users/:id" do
    before do
      User.create!(
        :name => "october",
        :email => "october@octobercomstock.com",
        :password => "superstrong",
        :bio => "rubyist"
      )
    end

    it "should return a user by name"
    it "should return a user with an email"
    it "should return a user's password"
    it "should return a user with a bio"
    it "should return a 404 if the user doesn't exist"
  end
end
