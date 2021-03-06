class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:recoverable,
         :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :firstname, :lastname, :username, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_many :pins, dependent: :destroy

  validates_presence_of :username
  validates_uniqueness_of :username

end
