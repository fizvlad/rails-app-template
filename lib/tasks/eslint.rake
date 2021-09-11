# frozen_string_literal: true

# rubocop:disable Rails/RakeEnvironment

desc 'Run ESLint check'
task :eslint do
  puts 'Running ESLint...'
  abort('ESLint failed!') unless system('yarn run eslint app/javascript app/assets/javascript --no-error-on-unmatched-pattern')
  puts
end

# rubocop:enable Rails/RakeEnvironment
