# rails g resource signup camper:belongs_to activity_id:integer time:integer --no-test-framework
# belongs_to or :integer are both working to generate a magriation table
class SignupSerializer < ActiveModel::Serializer

  attributes :id, :camper_id, :activity_id

  has_one :camper
  has_one :activity

  # belongs_to :camper
  # belongs_to :activity
end
