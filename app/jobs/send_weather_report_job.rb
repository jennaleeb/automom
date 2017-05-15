class SendWeatherReportJob
  # queue_as :default
  include Sidekiq::Worker

  def perform(params = {})
    family_member = FamilyMember.find(params['family_member_id'])
    WeatherReportMailer.greet(family_member).deliver_now
  end
end
