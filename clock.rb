require File.expand_path('../config/boot',        __FILE__)
require File.expand_path('../config/environment', __FILE__)
require 'clockwork'
include Clockwork

every(1.day, 'send_weather_report_job', at: '08:00') {
  `rake scheduled_tasks:emails`
}
