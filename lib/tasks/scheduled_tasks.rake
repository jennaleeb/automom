namespace :scheduled_tasks do
  require File.expand_path('../../../config/boot',        __FILE__)
  require File.expand_path('../../../config/environment', __FILE__)

  desc "Runs scheduled tasks"
  task :emails do
    SendWeatherReportJob.perform_later
    puts "Executing SendWeatherReportJob"
  end

end
