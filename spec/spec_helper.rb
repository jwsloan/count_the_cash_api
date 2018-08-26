# Require this file for unit tests
ENV["HANAMI_ENV"] ||= "test"

require_relative "../config/environment"
require "minitest/spec"
require "minitest/autorun"
require "minitest/matchers_vaccine"
Hanami.boot
