class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates_format_of :password, with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{6,}+\z/i

  has_many :images
  has_many :folders
  has_many :comments
end
