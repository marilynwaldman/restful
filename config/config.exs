# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :restful,
  ecto_repos: [Restful.Repo]

# Configures the endpoint
config :restful, RestfulWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "c2ss2vSzewqtBQQ3rAAMC/ABmsX1DtCYCLOYJWp2XQS9bXELrjabCwyl/RIe5TfB",
  render_errors: [view: RestfulWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Restful.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [
    signing_salt: "Xbcx+QLyDoBnSL4Mh1IIBAlToZRp801K"
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
