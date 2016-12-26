class Invoice < ActiveRecord::Base
	validates :status_type, presence: true

end
