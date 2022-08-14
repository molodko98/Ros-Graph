module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end



    field :user, String, "Find github fullname by Username" do
      argument :username, String
    end

    field :repos, [String], 'Find repos of given user' do
      argument :username, String
    end

    def user(username:)
      users_response = HTTParty.get("http://api.github.com/users/#{username}")
      parsed_body = JSON.parse(users_response.body)

      if parsed_body['message'] != 'Not Found'
        return parsed_body['name']
      else
        return 'Not Found'
      end
    end

    def repos(username:)
      repos_response = HTTParty.get("http://api.github.com/users/#{username}/repos")
      parsed_body = JSON.parse(repos_response.body)

      return [] if parsed_body.is_a?(Hash) && parsed_body.key?('message')

      parsed_body.map { |repo| repo['name'] }
    end
  end
end
