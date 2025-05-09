module Resolvers
  module Games
    class Game < Resolvers::BaseResolver
      type Types::GameType, null: false
      description 'Returns the game for the id'

      argument :id, ID, required: true

      def resolve(id:)
        ::Game.find_by(id: id)
      end
    end
  end
end
