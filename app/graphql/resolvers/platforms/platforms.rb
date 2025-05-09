module Resolvers
  module Platforms
    class Platforms < Resolvers::BaseResolver
      type [Types::PlatformType], null: false
      description 'returns all platforms'

      def resolve
        ::Platform.all
      end
    end
  end
end
