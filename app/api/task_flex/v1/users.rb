module TaskFlex
  module V1
    class Users < Grape::API
      use Rack::JSONP

      desc 'gets the users', entity: Entities::User
      get '' do
        present User.all, with: Entities::User
      end

      desc 'gets a user by its ID', entity: Entities::User
      params do
        requires :id, type: Integer
      end
      get ':id' do
        begin
          present User.find(params[:id]), with: Entities::User
        rescue ActiveRecord::RecordNotFound
          error!({ message: 'Inexistent user.', code: 404, with: TaskFlex::V1::TFError })
        end
      end

      desc 'creates a new user',
				entity: Entities::User,
				params: Entities::User.documentation
      # params do
      #   requires :user, type: Entities::User
      # end
      post '' do
        new_user = User.create(
					name: params[:name],
					email: params[:email],
					age: params[:age],
					birth_date: params[:birth_date])
				if new_user.invalid?
					error!({ message: 'Invalid data.', code: 400, with: TaskFlex::V1::TFError })
				else
					present new_user, with: Entities::User
				end
				# present new_user, with: Entities::User unless new_user.invalid?
      end

			desc 'updates a user',
				entity: Entities::User,
				params: Entities::User.documentation
			put ':id' do
				updated_user = User.update(
					params[:id],
					name: params[:name],
					email: params[:email],
					age: params[:age],
					birth_date: params[:birth_date])
				if updated_user.invalid?
					error!({ message: 'Invalid data.', code: 400, with: TaskFlex::V1::TFError })
				else
					present updated_user, with: Entities::User
				end
			end

			desc 'deletes a user'
			delete ':id' do
				begin
					User.find(params[:id]).destroy
				rescue ActiveRecord::RecordNotFound
					error!({ message: 'Inexistent user.', code: 404, with: TaskFlex::V1::TFError })
				end
			end
    end
  end
end
