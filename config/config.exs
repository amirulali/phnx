# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phnx,
  ecto_repos: [Phnx.Repo]

# Configures the endpoint
config :phnx, Phnx.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ChCBohT2oUKH1CP8q2pGPljPuaraNoyu6a0vU1ZbHCjjp/iJEj+I0q+PSylPPAP3",
  render_errors: [view: Phnx.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phnx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
