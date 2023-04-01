module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :authors, [Types::AuthorType], null: false,
      description: "An example field added by the generator"

    def authors
      Author.all
    end

    field :author, Types::AuthorType, null: false do 
      argument :id, ID, required: true
    end

    def author(id:)
      Author.find(id)
    end
  end
end
