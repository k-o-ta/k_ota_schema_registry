# frozen_string_literal: true

require "zeitwerk"
require_relative "k_ota_schema_registry/inflector"

loader = Zeitwerk::Loader.for_gem
loader.inflector = KOtaSchemaRegistry::Inflector.new(__FILE__)
loader.setup

module KOtaSchemaRegistry
  class Error < StandardError; end
  # Your code goes here...
end
