require 'resque_scheduler/server'

Resque.after_fork do
  ActiveRecord::Base.establish_connection
end