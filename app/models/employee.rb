class Employee < ActiveRecord::Base

	validates :name, presence: true
	validates :jobtype, presence: true

	has_many :invoices

end
