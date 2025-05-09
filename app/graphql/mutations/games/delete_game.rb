class Mutations::Games::DeleteGame < Mutations::BaseMutation
  argument :id, ID, required: true

  field :game, Types::Games::GameType
  field :errors, [String]

  def resolve(id:)
    game = Game.find(id)
    if game.destroy!
      {
        game: game,
        errors: []
      }
    end
  rescue => e
    {
      game: nil,
      errors: [e.message]
    }
  end
end
