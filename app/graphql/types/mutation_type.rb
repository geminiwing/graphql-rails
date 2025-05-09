# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_game, mutation: Mutations::Games::CreateGame
    field :delete_game, mutation: Mutations::Games::DeleteGame
  end
end
