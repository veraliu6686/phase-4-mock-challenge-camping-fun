# rails g resource signup camper:belongs_to activity_id:integer time:integer --no-test-framework
# belongs_to or :integer are both working to generate a join table
class Signup < ApplicationRecord
    # associations
    belongs_to :activity
    belongs_to :camper
    # validations
    # validates :time, inclusion: {in: 0..23}
    validates :time, numericality: {greater_than: -1, less_than: 24}
end
