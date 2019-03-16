# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"

set :environment, "development"

#
every 2.hours do
  rake "Event.where('time < ?',Time.now).where('date < ?',Date.today).update_all(event_end: true)"
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

Announcement.where("publish = ? AND expires < ?", true, Date.today)