class User < ApplicationRecord
  enum role: { basic: 0, moderator:1, admin: 2 }, _suffix: :role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
