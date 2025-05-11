# graphql-rails

## Installation

After cloning the repository, install the bundle.
```bash
$ bundle install
```

Migrate and seed the DB.
```bash
$ rails db:migrate
$ rails db:seed
```

Run the Rails server.
```bash
$ rails server
```

## Browser Test

GraphiQL is an in-browser GraphQL user interface. Type `localhost:3000/graphiql` in your browser to open the Graphiql UI.

### Testing Queries
To fetch all games, type the following query in the query section of GraphiQL UI.

```graphql
query Games {
  games {
    id,
    title
    reviewsCount
    platformNames
  }
}
```

To fetch a specific game, the query takes a game id.
```graphql
query Game($id: ID!) {
  game(id: $id) {
    id
    title
  }
}
```

Provide the game id in the "variables" section of the Graphiql UI.
Variables
```json
{
  "id": 1
}
```

### Testing Mutations
#### To add a new game
The mutation query wraps all input arguments inside a single `input` key. This is because the `CreateGame`'s base class `BaseMutation` inherits from `RelayClassicMutation`. Relay-style mutations accept only one argument.

```graphql
mutation CreateGame($attributes: GameInput!) {
  createGame(input: {
    attributes: $attributes
  })
  {
    game {
      id,
      title,
      platformNames
    }
    errors
  }
}
```

Variables
```json
{
  "attributes": {
    "title": "XCOM3",
    "description": "Lorem ipsum",
    "platformIds": [1, 2]
  }
}
```

#### To delete a game
Although the `DeleteGame` mutation takes only one `id` argument, it is still wrapped inside `input`.
```graphql
mutation DeleteGame($id: ID!){
  deleteGame(
    input: { id: $id }
  )
  {
    game {
	    title
    }
    errors
  }
}
```

variables
```json
{
  "id": 6
}
```
