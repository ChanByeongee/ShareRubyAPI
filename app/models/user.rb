class User < ApplicationRecord
  # Include default devise modules. Others available are:
  include Devise::JWT::RevocationStrategies::JTIMatcher
  def jwt_payload
    super.merge('foo' => 'bar')
  end
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :validatable, :jwt_authenticatable, jwt_revocation_strategy: self
end
