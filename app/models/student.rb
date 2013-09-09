class Student < ActiveRecord::Base
  belongs_to :parent
  belongs_to :activity

  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name,	:presence		=> true,
  							:length			=> { :maximum => 75 }
  validates :last_name,		:presence		=> true,
  							:length			=> { :maximum => 75 }
  validates :email,			:presence	    => true,
  							:format 		=> { :with => email_regex, message: "Incorrect email format."},
           					:uniqueness 	=> { :case_sensitive => false }
  validates :gender,		:presence		=> true,
  							:length			=> { :maximum => 1}
  validates :birth_date,		:presence		=> true
  validates :home_school_name,	:presence	=> true,
  							:length			=> { :maximum => 75 }
  validates :school_phone_number ,	:presence		=> true
  before_save { self.email = email.downcase }

  def student_full_name
    [first_name,last_name].join(' ')
  end
end
