class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable, :confirmable,
  devise :database_authenticatable, :registerable, :rememberable, :validatable
end
