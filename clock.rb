require File.expand_path('../config/boot',        __FILE__)
require File.expand_path('../config/environment', __FILE__)
require 'clockwork'
include Clockwork

# every(10.seconds, 'send_weather_report_job') { SendWeatherReportJob.perform_now }

# every(1.day, 'send_weather_report_job', at: '08:00') {
#   DefaultWorker.perform_async
# }
