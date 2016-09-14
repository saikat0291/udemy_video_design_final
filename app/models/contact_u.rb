class ContactU < ActiveRecord::Base
	validates_presence_of :name
	#validates_presence_of :email
	#validates :email, email_format: { message: "doesn't look like an email address" } #use if install "gem 'validates_email_format_of'"
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
	validates_presence_of :message
end
