class Company < ActiveRecord::Base

		def self.import(file)

			CSV.foreach(file.path, headers: true, encoding:'iso-8859-1:utf-8') do |row|

		      company_hash = row.to_hash
		      company = Company.where(id: company_hash["id"])

		      if company.count == 1
		        company.first.update_attributes(company_hash)
		      else
				Company.create! row.to_hash
		      end
		    end 

		end

	def self.to_csv
		CSV.generate do |csv|
			csv << column_names
			all.each do |company|
				csv << company.attributes.values_at(*column_names)
			end
		end
	end

end
