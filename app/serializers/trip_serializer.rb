class TripSerializer < ActiveModel::Serializer
  attributes :id, :city, :date
  belongs_to :user, serializer: UserSerializer
end
