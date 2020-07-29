class User < ApplicationRecord
  attr_accessor :password
  validates :email, :presence => true, :uniqueness => true
  validates_confirmation_of :password
  # validates_length_of :password, minimum: 6
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  before_save :encrypt_password, :unless => :password.blank?
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

# validates :password, :presence =>true, :confirmation => true, :length => { :within => 6..40 }, :on => :create
# validates :password, :confirmation => true, :length => { :within => 6..40 }, :on => :update, :unless => lambda{ |user| user.password.blank? } 