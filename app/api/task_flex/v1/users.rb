module TaskFlex
	module V1
    class Users < Grape::API
      use Rack::JSONP

      desc 'gets the users', entity: Entities::User
      get "" do
        present User.all, with: Entities::User
      end

      desc 'gets a user by its ID', entity: Entities::User
      params do
        requires :id, type: Integer
      end
      get :id do
        present User.find(params[:id]), with: Entities::User
      end

      desc 'creates a new user', entity: Entities::User, params: Entities::User.documentation
      # params do
      #   requires :user, type: Entities::User
      # end
      post "" do
        newUser = User.create(name: params[:name], email: params[:email], age: params[:age], birth_date: params[:birth_date])
      	present(newUser, with: Entities::User) unless newUser.invalid?
      end
    end
  end
end
