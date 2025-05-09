module Resolvers
  module Games
    class Games < Resolvers::BaseResolver
      type [Types::Games::GameType], null: false
      description 'Returns all games'

      def resolve
        ::Game.all
      end
    end
  end
end
