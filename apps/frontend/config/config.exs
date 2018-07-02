# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :frontend,
  namespace: Frontend

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :frontend, Frontend.Endpoint,
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: [
    node: [
      "node_modules/.bin/webpack-dev-server",
      "--inline",
      "--hot",
      "--color",
      "--stdin",
      "--client-log-level", "info",
      "--host", "localhost",
      "--port", "3000",
      "--public", "localhost:3000",
      "--config", "config/webpack.config.dev.js",
      cd: Path.expand("../.", __DIR__)
    ]
  ]
