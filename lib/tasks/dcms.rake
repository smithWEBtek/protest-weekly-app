namespace :db do
  desc 'drop, create, migrate, seed the db, restart rails'
  task dcms: :environment do
    puts 'dropping db....'
    Rake::Task['db:drop'].invoke
    
    puts 'creating db....'
    Rake::Task['db:create'].invoke
    
    puts 'running migrations ....'
    Rake::Task['db:migrate'].invoke
    
    puts 'seeding db ....'
    Rake::Task['db:seed'].invoke
    
    puts 'starting rails server ....'
    exec('rake start:start')    
  end
end


# put that in a new file called ‘dcms.rake’ in:    `lib/tasks/dcms.rake`
# then you can run `rake db:dcms`
# immediately verifies your data model and seed data