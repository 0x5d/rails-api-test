module API
  class Users < Grape::API
    use Rack::JSONP

    desc 'gets the users'
    get "" do
      present User.all, with: API::Entities::User
    end
  end
end
