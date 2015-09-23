module SchemaFriendly
  class Railtie < Rails::Railtie
    railtie_name :schema_friendly

    rake_tasks do
      load "schema_friendly/tasks.rake"
    end
  end
end
