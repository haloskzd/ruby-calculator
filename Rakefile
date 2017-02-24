require 'rake/testtask'

task :start do
	puts "Starting app"
	require 'zhalo_calculator'
end

task :console => :start do
	require 'irb'
	ARGV.clear
	IRB.start
end

Rake::TestTask.new do |t|
	t.libs << 'test'
end

desc "Run Tests"
task :default => :test
