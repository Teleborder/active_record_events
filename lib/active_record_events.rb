require "active_record_events/version"
require "active_support/concern"
require "event_emitter"

module ActiveRecordEvents
  extend ActiveSupport::Concern
  include EventEmitter

  def after_create
    self.emit(:create)
  end

  def after_update
    self.emit(:update)
  end

  def after_destroy
    self.emit(:destroy)
  end

  included do
    after_create :after_create
    after_update :after_update
    after_destroy :after_destroy
  end
end
