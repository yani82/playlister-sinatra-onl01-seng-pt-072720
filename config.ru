require './config/environment'

# begin
#   fi_check_migration

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

  use Rack::MethodOverride
  use ArtistsController
  use SongsController
  use GenresController
  run ApplicationController
# rescue ActiveRecord::PendingMigrationError => err
#   STDERR.puts err
#   exit 1
end
