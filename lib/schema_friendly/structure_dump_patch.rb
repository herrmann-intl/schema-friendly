if defined(Rails) && Rails::VERSION::MAJOR < 5
  ActiveRecord::Tasks::PostgreSQLDatabaseTasks.class_eval do
    def structure_dump(filename)
      set_psql_env

      command = "pg_dump -s -x -O -f #{Shellwords.escape(filename)} #{Shellwords.escape(configuration['database'])}"
      raise 'Error dumping database' unless Kernel.system(command)

      File.open(filename, "a") { |f| f << "SET search_path TO #{connection.schema_search_path};\n\n" }
    end
  end
end
