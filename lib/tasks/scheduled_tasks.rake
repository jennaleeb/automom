namespace :scheduled_tasks do
  require File.expand_path('../../../config/boot',        __FILE__)
  require File.expand_path('../../../config/environment', __FILE__)

  desc "Runs scheduled tasks"
  task :emails do
    FamilyMember.all.each do |family_member|
      SendWeatherReportJob.perform_async(family_member.id)
      puts "Executing SendWeatherReportJob for #{family_member.name}"
    end
  end

end
