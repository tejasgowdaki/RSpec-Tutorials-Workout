require "active_record"

class Book < ActiveRecord::Base
  validates_presence_of :name
end
