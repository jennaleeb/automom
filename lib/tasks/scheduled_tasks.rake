namespace :scheduled_tasks do
  require Rails.root.join('clock.rb').to_s
  Dir[File.join('.', "app/jobs/*.rb")].each{ |f| require f }

  desc "Runs scheduled tasks"
  task :environment do
    Clockwork.every(10.seconds, "events.jobs") {
      SendWeatherReportJob.perform_now
    }
    Clockwork.run
  end
end
