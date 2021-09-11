# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

if ENV['RAILS_ENV'] != 'production'
  # Rubocop
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new

  # RSpec
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:rspec)

  # Default
  task default: %i[rubocop erblint eslint rspec]
end
