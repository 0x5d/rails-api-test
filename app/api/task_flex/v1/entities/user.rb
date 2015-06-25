module TaskFlex
	module V1
	  module Entities
	    class User < Grape::Entity
	      expose :name
	      expose :email
	    end
	  end
	end
end
