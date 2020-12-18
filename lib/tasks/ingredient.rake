namespace :ingredient do
  desc "Ceci est un test"
  task test: :environment do
    puts 'La tâche commence'
    TestJob.perform_later
    puts 'La tâche est finie'
  end
end
