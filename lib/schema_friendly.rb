require "schema_friendly/version"
require "active_record"
require 'schema_friendly/railtie' if defined?(Rails)

module SchemaFriendly
  def self.schema
    @schema
  end

  def self.schema=(value)
    @schema = value
  end
end
