class Rolodex
	
	def initialize
		@contacts = []
		@id = 0
	end 

	def add_contact
		puts "What's the name of the contact you want to add"
			name = gets.chomp
		puts "What's the address of the contact you want to add?"
			address = gets.chomp
		puts "What's the email of the contact you want to add?"
			email = gets.chomp
		puts "What are you notes?"
			notes = gets.chomp

		@id += 1

		contact = Contact.new(@id, name, address, email, notes)
		@contacts << contact 

		puts "This is the id of the contact added #{contact.id}"
		puts "This is the name of the contact added #{contact.name}"
		puts "This is the address of the contact added #{contact.address}"
		puts "This is the email of the contact added #{contact.email}"
		puts "These are the new notes #{contact.notes}"
	end 

	def modify_contact
		
		puts "What's the id of the contact you want to modify?"
			id = gets.chomp

		@contacts.each do |contact|
			if contact.id == id.to_i
			puts "What do you want to change the name of the contact to?"
				name = gets.chomp
				contact.name = name 
			puts "What's the address of the contact you want to modify?"
				address = gets.chomp
				contact.address = address
			puts "What's the email of the contact you want to modify?"
				email = gets.chomp
				contact.email = email
			puts "What are your new notes?"
				notes = gets.chomp
				contact.notes = notes
			end 

			puts "This is the id of the contact modified #{contact.id}"
			puts "This is the name of the contact modified #{contact.name}"
			puts "This is the address of the contact modified #{contact.address}"
			puts "This is the email of the contact modified #{contact.email}"
			puts "These are the new notes #{contact.notes}"
		end 

	end 

	def delete_contact
		puts "What's the id of the contact you want to delete?"
		id = gets.chomp 
		result = nil
		
		@contacts.each do |contact|
			if contact.id == id.to_i
				result = contact 
			end 
		end 

		@contacts.delete(result)

			puts "This is the id of the contact deleted #{contact.id}"
			puts "This is the name of the contact deleted #{contact.name}"
			puts "This is the address of the contact deleted #{contact.address}"
			puts "This is the email of the contact deleted #{contact.email}"
			puts "These are the new notes #{contact.notes}"
	end 

	def display_contact
		@contacts.each do |contact|
			puts "id: #{contact.id}"
			puts "name: #{contact.name}"
			puts "address: #{contact.address}"
			puts "email: #{contact.email}"
			puts "notes: #{contact.notes}"
		end 
	end 

	def search_by_id
		puts "What the id of the contact you want to find?"
			id = gets.chomp

		@contacts.each do |contact|
			if contact.id == id.to_i
			puts "id: #{contact.id}"
			puts "name: #{contact.name}"
			puts "address: #{contact.address}"
			puts "email: #{contact.email}"
			puts "notes: #{contact.notes}"
			end 
		end 
	end 

end 