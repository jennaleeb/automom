class DefaultWorker
  # this is an example of a sidekiq worker not not created first using ActiveJob
  # see jobs/send_weather_report_job for other approach
  include Sidekiq::Worker

  def perform(params = {})
    family_member = FamilyMember.find(params['family_member_id'])
    WeatherReportMailer.greet(family_member).deliver_now
  end
end
