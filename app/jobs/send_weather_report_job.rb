class SendWeatherReportJob
  include Sidekiq::Worker # if you dont want to use Sidekiq, remove this module and have your class inherit from ApplicationJob

  def perform(params = {})
    family_member = FamilyMember.find(params['family_member_id'])
    WeatherReportMailer.greet(family_member).deliver_now
  end
end
