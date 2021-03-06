require "bundler/setup"
Bundler.setup

require "active_record_events"
require "active_record"

ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

load File.dirname(__FILE__) + '/schema.rb'
require File.dirname(__FILE__) + '/models.rb'
