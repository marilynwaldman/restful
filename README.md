# Restful

1.  create project

`mix phx.new restful`

2.  To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

3.  Add liveview --- phoenix_live_view, "~> 0.8.1"

follow instructions here, but use 0.8.1 instead

https://github.com/phoenixframework/phoenix_live_view/blob/master/guides/introduction/installation.md

4.  test liveview with counter

5.  create tables and databases

The first argument is the context module followed by the schema module and its plural name 
(used as the schema table name).

The context is an Elixir module that serves as an API boundary for the given resource.
 A context often holds many related resources. Therefore, if the context already exists, 
 it will be augmented with functions for the given resource.

`mix phx.gen.html Authorization Role roles name:string`

`mix phx.gen.html Accounts User users name:string role_id:references:roles`



## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
