class User < ApplicationRecord
  rolify
  has_many :articles, dependent: :restrict_with_error
  has_many :comments, dependent: :destroy

  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable,  and :omniauthable
  devise :confirmable,
         :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable
end
