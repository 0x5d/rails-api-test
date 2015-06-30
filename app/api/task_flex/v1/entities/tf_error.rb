module TaskFlex
	module V1
	  module Entities
	    class TFError < Grape::Entity

	    	attr_accessor :message

	    	def initialize(message)
	    		@message = message
	    	end
	    end
	  end
	end
end
