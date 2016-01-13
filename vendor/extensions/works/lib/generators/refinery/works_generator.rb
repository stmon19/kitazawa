module Refinery
  class WorksGenerator < Rails::Generators::Base
    def rake_db
      rake 'refinery_works:install:migrations'
    end

    def append_load_seed_data
      create_file 'db/seeds.rb' unless File.exist?(File.join(destination_root, 'db', 'seeds.rb'))
      append_file 'db/seeds.rb', verbose: true do
        <<-EOH

# Added by Refinery CMS Works extension
Refinery::Works::Engine.load_seed
        EOH
      end
    end
  end
end