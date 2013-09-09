class Parent < ActiveRecord::Base
  has_many :students
  has_many :carpoolers

  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i

  validates :first_name,	:presence		=> true,
  							:length			=> { :maximum => 75 }
  validates :last_name,		:presence		=> true,
  							:length			=> { :maximum => 75 }
  validates :email,			:presence	    => true,
  							 :format 		=> { :with => email_regex, message: "Incorrect email format."},
           					:uniqueness 	=> { :case_sensitive => false, message: " address has already been taken, please enter a unique email"}
  validates :password,      :length			=> { :within => 6..40 }
  validates :address_street,:presence		=> true,
  							:length			=> { :maximum => 45 }
  validates :address_city,:presence			=> true,
  							:length			=> { :maximum => 45 }
  validates :address_state,:presence		=> true,
  							:length			=> { :maximum => 2 }
  validates :phone_home ,	:presence		=> true
  validates :phone_mobile ,:presence		=> true

  before_save { self.email = email.downcase }
  has_secure_password

  def parent_full_name
    [first_name,last_name].join(' ')
  end

end
