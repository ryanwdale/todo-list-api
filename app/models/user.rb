class User < ApplicationRecord
    has_secure_password

    has_many :todos, foreign_key: :user_id
    validates_presence_of :email, :password_digest
end
