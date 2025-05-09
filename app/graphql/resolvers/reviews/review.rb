module Resolvers
  module Reviews
    class Review < Resolvers::BaseResolver
      type Types::Reviews::ReviewType, null: true
      description 'returns a review for the id'

      def resolve(id:)
        ::Review.find_by(id: id)
      end
    end
  end
end
