class Invoice < ActiveRecord::Base

	validates :company, presence: true
	validates :tax, presence: true
	validates :employee, presence: true
	validates :status_type, presence: true

	belongs_to :employee
	has_many :purchases, dependent: :destroy
	
end
