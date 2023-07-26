class User < ApplicationRecord
  # enum role: [:admin, :user ]
  enum role: {admin: 'admin',user: 'user' }, _default: 'user'
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :publications 
  has_one_attached :profile_picture
  validates :email, presence: true

end
