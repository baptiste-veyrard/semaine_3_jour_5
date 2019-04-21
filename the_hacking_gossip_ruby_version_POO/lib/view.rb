class View
	attr_accessor :gossip_number

	def initialize
		@gossip_number = 0
		
	end

	def create_gossip
		puts "Quel est ton nom?"
		print ">"
		user_name = gets.chomp

		puts "Dis moi le potin que tu aimerais créer :"
		print ">"
		user_gossip = gets.chomp

		return params = {author: user_name , content: user_gossip}
		
	end

	def index_gossips(all_gossips)
		@gossip_number = 0
		puts "Voici tous les potins :"
		all_gossips.each do |gossip|
			@gossip_number += 1
			puts "#{@gossip_number} : #{gossip.content} , from #{gossip.author}."
		end
		
	end

	def delete_gossip
		puts "Gossip number : #{gossip_number}"
		puts "\nLequel souhaites-tu supprimer? "
		delete_choice = gets.chomp.to_i
		while delete_choice < 1 || delete_choice > gossip_number.to_i
			puts "\nTu dois rentrer un caractère valide. \nQuel potin souhaites-tu supprimer? "
			delete_choice = gets.chomp.to_i
		end
		return delete_choice
	end
end