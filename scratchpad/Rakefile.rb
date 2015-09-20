#ken mcfadden example rake task
# Rakefile

# below build the bridge is done first, as cross_bridge depends on it.
#
desc "Cross the bridge."
task :cross_bridge => [:build_bridge] do
  puts "I'm crossing the bridge."
end
desc "Build the bridge"
task :build_bridge do
  puts 'Bridge construction is complete.'
end
task :default => [:cross_bridge]