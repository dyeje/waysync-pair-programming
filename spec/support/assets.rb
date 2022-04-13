RSpec.configure do |config|
  next if config.filter.opposite.rules[:type] == "system" || config.exclude_pattern.match?(%r{spec/system})
  next if ENV.has_key?('CI')

  config.before(:suite) do
    unless File.exist?(Rails.root.join('app', 'assets', 'builds', 'application.css'))
      $stdout.puts "\n🐢  Precompiling assets.\n"
      Rails.application.load_tasks
      Rake::Task["javascript:build"].invoke
      Rake::Task["css:build"].invoke
    end
  end
end
