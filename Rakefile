require 'bundler/setup'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

task :default do
  sh 'rake -T'
end

RSpec::Core::RakeTask.new(:spec)
RuboCop::RakeTask.new(:rubocop)

desc 'Run tests'
task :test do
  Rake::Task['spec'].execute
  Rake::Task['rubocop'].execute
end

def alias_task(alias_task, original)
  desc "Alias for rake #{original}"
  task alias_task, Rake.application[original].arg_names => original
end
