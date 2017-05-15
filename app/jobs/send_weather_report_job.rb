class SendWeatherReportJob
  # queue_as :default
  include Sidekiq::Worker

  def perform(family_member_id)
    WeatherReportMailer.greet(family_member_id).deliver_now
  end
end
