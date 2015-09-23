module ActiveRecord
      # in rails: activerecord/lib/active_record/migration.rb
  class Migrator
    def self.schema_migrations_table_name
      "#{SchemaFriendly.schema}.schema_migrations"
    end
  end

  # in rails: activerecord/lib/active_record/schema_migration.rb
  class SchemaMigration < ActiveRecord::Base
    def self.table_name
      "#{SchemaFriendly.schema}.schema_migrations"
    end

    def self.index_name
      "unique_" + "#{table_name}"
    end
  end
end
