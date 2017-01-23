class Robot < ApplicationRecord
  validates_presence_of :name, :type, :armor, :jetpack, presence: true
end
