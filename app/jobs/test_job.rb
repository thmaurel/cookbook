class TestJob < ApplicationJob
  queue_as :default

  def perform
    # Do something later
    puts 'Start working'
    sleep 5
    puts 'Work done'
  end
end
