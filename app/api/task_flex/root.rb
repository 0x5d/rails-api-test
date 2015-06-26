module TaskFlex
  class Root < Grape::API
    default_format :json

    # Separate the api into smaller
    # modules like this
    mount TaskFlex::V1::Root => '/v1'

  end
end
