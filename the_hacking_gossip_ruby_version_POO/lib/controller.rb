require_relative 'view'
require_relative 'gossip'

class Controller
	attr_accessor :my_gossip

	def initialize
		@my_gossip = my_gossip
		@view = View.new
		
	end

	def create_gossip
		params = @view.create_gossip
		@my_gossip = Gossip.new(params[:author] , params[:content])
		@my_gossip.save
		
	end

	def index_gossips
		all_gossips = Gossip.all
		@view.index_gossips(all_gossips)
	end

	def delete_gossip
		index_gossips
		delete_choice = @view.delete_gossip
		@my_gossip = Gossip.delete(delete_choice.to_i)


		
	end

end