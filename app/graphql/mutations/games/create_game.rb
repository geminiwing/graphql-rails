class Mutations::Games::CreateGame < Mutations::BaseMutation
  argument :attributes, Types::Games::GameInputType, required: true

  field :game, Types::Games::GameType
  field :errors, [String]

  def resolve(attributes:)
    game = Game.create!(attributes.to_h)
    {
      game: game,
      errors: []
    }
  rescue => e
    {
      game: nil,
      errors: [e.message]
    }
  end
end
