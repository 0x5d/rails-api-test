module TaskFlex
	module V1
    class TFError < Grape::Entity
    	expose :code
			expose :message
    end
  end
end
