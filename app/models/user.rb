class User < ApplicationRecord
    has_many :blogs, dependent: :destroy
    validates_presence_of :email
    validates_presence_of :name
    validates_presence_of :password
    validates :password, confirmation: true
has_secure_password
end
