class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable
  # enum department: { finance: 0, hr: 1, tech: 2 }
  enum role: { manager: 0, team_member: 1 }
  has_one :department, dependent: :destroy

  validates :email, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 20}
  
end
