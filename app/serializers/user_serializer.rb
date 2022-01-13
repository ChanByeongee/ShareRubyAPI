class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :created_at, :name, :jti
end
