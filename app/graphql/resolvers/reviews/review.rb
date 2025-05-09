module Resolvers
  module Reviews
    class Review < Resolvers::BaseResolver
      type Types::ReviewType, null: false
      description 'returns a review for the id'

      def resolve(id:)
        ::Review.find_by(id: id)
      end
    end
  end
end
