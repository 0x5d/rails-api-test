module API
  class Base < Grape::API
    default_format :json

    # Separate the api into smaller
    # modules like this
    mount API::Users => '/users'

    # Adds the swagger documentation to your
    # api. You only need this once, not in
    # every sub module
    add_swagger_documentation(
      base_path: "/api",
      hide_documentation_path: true
    )
  end
end
