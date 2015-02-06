require "active_record_events/version"
require "active_support/concern"
require "event_emitter"

module ActiveRecordEvents
  extend ActiveSupport::Concern
  include EventEmitter

  included do
    after_commit -> { emit(:create) }, on: :create
    after_commit -> { emit(:update) }, on: :update
    after_commit -> { emit(:destroy) }, on: :destroy
  end
end
