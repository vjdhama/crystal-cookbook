require 'bundler/setup'

desc 'Run Test Kitchen integration tests'
namespace :integration do

  def kitchen_instances(regexp, config)
    instances = Kitchen::Config.new(config).instances
    return instances if regexp.nil? || regexp == 'all'
    instances.get_all(Regexp.new(regexp))
  end

  def run_kitchen(action, regexp, loader_config = {})
    action = 'test' if action.nil?
    require 'kitchen'
    Kitchen.logger = Kitchen.default_file_logger
    config = { loader: Kitchen::Loader::YAML.new(loader_config) }
    kitchen_instances(regexp, config).each { |i| i.send(action) }
  end

  desc 'Run integration tests with kitchen-vagrant'
  task :vagrant, [:regexp, :action] do |_t, args|
    run_kitchen(args.action, args.regexp)
  end

  desc 'Run integration tests with kitchen-docker'
  task :docker, [:regexp, :action] do |_t, args|
    run_kitchen(args.action, args.regexp, local_config: '.kitchen.docker.yml')
  end
end

