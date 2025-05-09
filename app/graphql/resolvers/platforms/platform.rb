module Resolvers
  module Platforms
    class Platform < Resolvers::BaseResolver
      type Types::Platforms::PlatformType, null: true
      description 'Returns the game for the id'

      argument :id, ID, required: true

      def resolve(id:)
        ::Platform.find_by(id: id)
      end
    end
  end
end
