module SchemaFriendly
  class Railtie < Rails::Railtie
    railtie_name :schema_friendly

    rake_tasks do
      require 'schema_friendly/structure_dump_patch'
      require 'schema_friendly/structure_dump_patch'
      load "schema_friendly/tasks.rake"
    end
  end
end
