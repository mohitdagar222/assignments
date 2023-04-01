module Mutations
    class CreateAuthor < BaseMutation
      # define the input arguments for the mutation
      argument :name, String, required: true
   
  
      # define the return fields for the mutation
      field :author, Types::AuthorType, null: true
      field :errors, [String], null: false
  
      def resolve(name:)
        author = Author.new(name: name)
  
        if author.save
          { author: author, errors: [] }
        else
          { author: nil, errors: author.errors.full_messages }
        end
      end
    end
  end
  