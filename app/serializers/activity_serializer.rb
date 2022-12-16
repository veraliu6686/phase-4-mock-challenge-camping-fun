# rails g resource activity name difficulty:integer --no-test-framework
class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :difficulty

end
