require "bundler/setup"
require "hanami/setup"
require "hanami/model"
require_relative "../lib/count_the_cash_api"
require_relative "../apps/api/application"
require_relative "../apps/web/application"

Hanami.configure do
  mount Api::Application, at: "/api"
  mount Web::Application, at: "/"

  model do
    ##
    # Database adapter
    #
    # Available options:
    #
    #  * SQL adapter
    #    adapter :sql, 'sqlite://db/count_the_cash_api_development.sqlite3'
    #    adapter :sql, 'postgresql://localhost/count_the_cash_api_development'
    #    adapter :sql, 'mysql://localhost/count_the_cash_api_development'
    #
    adapter :sql, ENV.fetch("DATABASE_URL")

    ##
    # Migrations
    #
    migrations "db/migrations"
    schema     "db/schema.sql"
  end

  mailer do
    root "lib/count_the_cash_api/mailers"

    # See http://hanamirb.org/guides/mailers/delivery
    delivery :test
  end

  environment :development do
    # See: http://hanamirb.org/guides/projects/logging
    logger level: :debug
  end

  environment :production do
    logger level: :info, formatter: :json, filter: []

    mailer do
      delivery :smtp, address: ENV.fetch("SMTP_HOST"), port: ENV.fetch("SMTP_PORT")
    end
  end
end
