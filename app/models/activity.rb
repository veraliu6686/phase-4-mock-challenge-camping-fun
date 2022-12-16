# rails g resource activity name difficulty:integer --no-test-framework
class Activity < ApplicationRecord
    # associations
    has_many :signups, dependent: :destroy
    has_many :campers, through: :signups
end
