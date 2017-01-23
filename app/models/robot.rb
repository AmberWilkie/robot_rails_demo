class Robot < ApplicationRecord
  validates_presence_of :name, :type, :armor, presence: true
end
