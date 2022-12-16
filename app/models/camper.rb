# rails g resource camper name age:integer --no-test-framework
class Camper < ApplicationRecord
    # associations
    has_many :signups
    has_many :activities, through: :signups
    # validations
    validates :name, presence: true
    # validates :age, inclusion:{in: 8..18}
    validates :age, numericality: {greater_than: 7, less_than: 19}
end
