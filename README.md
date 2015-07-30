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
require 'mina/tail'
require 'mina/bundler'
require 'mina/rails'
require 'mina/git'

...

task setup: :environment do
  ...
end
```

## Usage

### on deployment

This gem provides mina tasks that can be used during deployment for restarting delayed_jobs tasks.




### outside of deployment

These task help managing delayed jobs and can be used to

```shell
$ mina production tail:live
```

Tails `log/production.log` live.

```shell
$ mina production tail:live file=unicorn.err.log
```

Tails `log/unicorn.err.log` live.

```shell
$ mina production tail:last
```

Returns the last 2000 lines of the `log/production.log`

```shell
$ mina production tail:last lines=20
```

Returns the last 20 lines of the `log/production.log`

```shell
$ mina production tail:last file=unicorn.err.log lines=20
```

Returns the last 20 lines of the `log/unicorn.err.log`

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
