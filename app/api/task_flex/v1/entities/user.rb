module TaskFlex
	module V1
	  module Entities
	    class User < Grape::Entity
	      expose :name, documentation: { type: "string", desc: "The user's name" }
	      expose :email, documentation: { type: "string", desc: "The user's email" }
	      expose :age, documentation: { type: "integer", desc: "The user's age" }
	      expose :birth_date, documentation: { type: "date", desc: "The user's date of birth" }
	    end
	  end
	end
end
