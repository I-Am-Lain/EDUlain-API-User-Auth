class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :birthday, :gender, :bio, :photo, :college, :gpa
end
