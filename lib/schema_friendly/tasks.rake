namespace :db do
  namespace :create do
    desc 'Handles creation of application schema for PG database'
    task :schema => ["environment", "load_config"] do |t, args|
      ActiveRecord::Base.connection.execute("CREATE SCHEMA IF NOT EXISTS #{SchemaFriendly.schema}")
    end
  end
end
