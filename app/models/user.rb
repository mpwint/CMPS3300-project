class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  validates :name, presence: true
  validates :email, presence: true
  
  acts_as_commontator
  
  # Setup accessible (or protected) attributes for the model
  # attr_accessible :password, :password_confirmation
end
