module TaskFlex
  class Root < Grape::API
    default_format :json

    # Separate the api into smaller
    # modules like this
    mount TaskFlex::V1::Root => '/v1'

    # # Adds the swagger documentation to your
    # # api. You only need this once, not in
    # # every sub module
    # add_swagger_documentation(
    #   base_path: "/api/v1",
    #   hide_documentation_path: true
    # )
  end
end
