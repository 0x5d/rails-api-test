module TaskFlex
	module V1
	  module Entities
	    class User < Grape::Entity
	      expose :name, documentation: { type: "string", desc: "The user's name" }
	      expose :email, documentation: { type: "string", desc: "The user's email" }
	    end
	  end
	end
end
