class Router

	def initialize
		@controller = Controller.new
	end

	def perform
		puts "BIENVENUE DANS THE GOSSIP PROJECT"

		while true
			puts "\n"
			puts "Tu veux faire quoi jeune mouss' ?"
			puts "1. Je veux créer un gossip"
			puts "2. Je veux afficher tous les potins"
			puts "3. Je veux supprimer un potin"
			puts "4. Je veux quitter l'app"
			print ">"
			params = gets.chomp.to_i

			case params

			when 1
				puts "Tu as choisi de créer un gossip"
				@controller.create_gossip

			when 2
				puts "Tu as choisi d'afficher tous les potins"
				@controller.index_gossips

			when 3
				puts "Tu as choisi de supprimer un potin"
				@controller.delete_gossip
				
				
			when 4
				puts "A bientôt !"
				break

			else
				puts "Ce choix n'existe pas, merci de ressayer"
				
			end
		end
		
	end

end