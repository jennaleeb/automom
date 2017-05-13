namespace :scheduled_tasks do
  require Rails.root.join('clock.rb').to_s
  Dir[File.join('.', "app/jobs/*.rb")].each{ |f| require f }

  desc "Runs scheduled tasks"
  task :emails do
    SendWeatherReportJob.perform_later
  end
end
