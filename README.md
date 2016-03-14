# Mina-DJ

Tasks for working with delayed_jobs in your Mina deployment environment.

## Installation

Add this line to your application's Gemfile:

```rb
gem 'mina-dj', require: false
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:


Require `mina/delayed_jobs` in your `config/deploy.rb`:

```rb
require 'mina/bundler'
require 'mina/rails'
require 'mina/git'
require 'mina/dj'

...

task setup: :environment do
  ...
end
```

If you need multiple job queues, you can define them in the `deploy.rb`:

set :delayed_jobs_queues, %w(default special1 special2)

By default, it just starts one worker deamon.

## Usage

### on deployment

This gem provides mina tasks that can be used during deployment for restarting delayed_jobs tasks.




### outside of deployment

These task help managing delayed jobs and can be used to

```shell
$ mina production delayed:work
```

Starts a remote worker, that continually works on jobs.

```shell
$ mina production delayed:workoff
```

Starts a remote worker, that works until all jobs are done.

```shell
$ mina production delayed:workoff
```

Clears all existing jobs from the database.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
