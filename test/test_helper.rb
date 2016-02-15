ENV["RACK_ENV"] ||= "test"

require 'bundler'
Bundler.require

require File.expand_path("../../config/environment", __FILE__)
require 'minitest/autorun'
require 'minitest/pride'
require 'capybara/dsl'
require 'tilt/erb'
require 'database_cleaner'

Capybara.app = RushHour::Server

DatabaseCleaner.strategy = :truncation, {except: %w[public.schema_migrations]}

module TestHelpers
  def setup
    DatabaseCleaner.start
    super
  end

  def teardown
    DatabaseCleaner.clean
    super
  end

  def create_payload(number = 1)
    number.times do |num|
      PayloadRequest.create(url_id: (num + 1), requested_at: "10:00", responded_in: "37", referred_by: "social login", request_type: "get", parameters: "params", event_name_id: (num + 1), user_agent_id: (num + 1), resolution_size_id: (num + 1), ip_id: (num + 1))
    end
  end
end
