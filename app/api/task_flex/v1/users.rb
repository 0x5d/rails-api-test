module TaskFlex
	module V1
    class Users < Grape::API
      use Rack::JSONP

      desc 'gets the users'
      get "" do
        present User.all, with: Entities::User
      end
    end
  end
end
