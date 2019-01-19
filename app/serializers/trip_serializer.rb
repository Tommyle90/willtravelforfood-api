class TripSerializer < ActiveModel::Serializer
  attributes :id, :city, :date, :user_id
  belongs_to :user, serializer: UserSerializer
end
