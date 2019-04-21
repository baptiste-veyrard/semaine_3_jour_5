	require 'csv'
	require 'pry'

	class Gossip
		attr_reader :author
		attr_reader :content

		def initialize(author, content)
			@author = author
			@content = content
		end

		def save
			CSV.open("./db/gossip.csv", "a+") do |row|
				row << [@author, @content]
			end
		end

		def self.all
			all_gossips = []
			CSV.foreach("./db/gossip.csv").each do |line|
				gossip_provisoire = Gossip.new(line[0],line[1])
				all_gossips << gossip_provisoire
			end
			return all_gossips
		end

		def self.delete(delete_choice)
			i = 0
			CSV.open("./db/gossip.csv").each do |line|
				i +=1
				if i == delete_choice
					puts "CHOISI"
					table = CSV.table("./db/gossip.csv")
					table.delete(i, minimum_index = 1)

					File.open("./db/gossip.csv", 'w') do |f|
						f.write(table.to_csv)
					end
				end
			end
		end
	end