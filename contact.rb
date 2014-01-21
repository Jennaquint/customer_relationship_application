class Contact
	attr_accessor :name, :address, :email, :notes
	attr_reader :id

	def initialize(id, name, address, email, notes)
		@id = id
		@name = name
		@address = address
		@email = email
		@notes = notes
	end

end 
