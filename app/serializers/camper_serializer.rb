# rails g resource camper name age:integer --no-test-framework
class CamperSerializer < ActiveModel::Serializer
  attributes :id, :name, :age

  # has_many :signups
  # has_many :activities

  # has_many :activities, serializer: CamperActivitySerializer
  ##### will render activities in camper#index
end
