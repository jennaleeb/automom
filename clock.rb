require File.expand_path('../config/boot',        __FILE__)
require File.expand_path('../config/environment', __FILE__)
require 'clockwork'
include Clockwork

# what we really want is
# every(1.day, 'send_weather_report_job', at: '08:00')

every(10.seconds, 'send_weather_report_job') {
  `rake scheduled_tasks:emails`
}
