module TaskFlex
  module V1
    class Root < Grape::API
      mount TaskFlex::V1::Users => '/users'

    # Adds the swagger documentation to your
    # api. You only need this once, not in
    # every sub module
    add_swagger_documentation(
      base_path: "/api/v1",
      hide_documentation_path: true
    )
    end
  end
end
