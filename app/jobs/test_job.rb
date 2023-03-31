class TestJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Simulates a long, time-consuming task
    sleep 30
    # Will display current time, milliseconds included
    p "hello from TestJob #{Time.now().strftime('%F - %H:%M:%S.%L')}"
  end
end