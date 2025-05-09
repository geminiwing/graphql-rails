module Resolvers
  module Reviews
    class Reviews < Resolvers::BaseResolver
      type [Types::ReviewType], null: false
      description 'returns all reviews'

      def resolve
        ::Review.all
      end
    end
  end
end
