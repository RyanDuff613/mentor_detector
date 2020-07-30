class User < ApplicationRecord
  attr_accessor :password
  validates :email, :presence => true, :uniqueness => true
  validates_length_of :password, minimum: 6, on: :create
  validates_confirmation_of :password
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  before_save :encrypt_password, :unless => Proc.new{|u| u.password.blank?}

  has_and_belongs_to_many :technologies
  
  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password,password_salt)
  end
  
  def self.authenticate(email, password)
    user = User.find_by "email = ?", email
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
end
