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
To fetch all games, type the following query in the query section of the Graphiql.

Operation
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

Operation
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
