namespace :delayed_job do
  desc "Stop delayed_job deamon..."
  task restart: :environment do
    invoke :'delayed_job:stop'
    invoke :'delayed_job:start'
  end

  desc "Stop delayed_job deamon..."
  task stop: :environment do
    queue! "#{bundle_prefix} bin/delayed_job stop"
  end

  desc "Start delayed_job deamon..."
  task start: :environment do
    if fetch(:delayed_jobs_queues)
      fetch(:delayed_jobs_queues).each_with_index do |queue, index|
        queue! "#{bundle_prefix} bin/delayed_job --queue=#{queue} -i=#{index} start"
      end
    else
      queue! "#{bundle_prefix} bin/delayed_job start"
    end
  end

  desc "Start single delayed_job worker process, quitting once done..."
  task workoff: :environment do
    queue! "#{bundle_prefix} rake jobs:workoff"
  end

  desc "Start single delayed_job worker process..."
  task work: :environment do
    queue! "#{bundle_prefix} rake jobs:work"
  end

  desc "Clear the delayed_job queue..."
  task clear: :environment do
    queue! "#{bundle_prefix} rake jobs:clear"
  end
end
