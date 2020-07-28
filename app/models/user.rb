class User < ApplicationRecord
  attr_accessor :password
  validates_confirmation_of :password
  validates :email, :presence => true, :uniqueness => true
  before_save :encrypt_password
  has_many :technologies

  # def initialize(first_name, last_name, is_mentor, is_admin, phone, email, city, state)
  #   @first_name = first_name
  #   @last_name = last_name
  #   @is_mentor = is_mentor
  #   @is_admin = is_admin
  #   @phone = phone
  #   @email = email
  #   @city = city
  #   @state = state
  # end

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password,password_salt)
  end

  def self.authenticate(email, password)
    user = User.find_by 'email = ?', email
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

end