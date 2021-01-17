# encoding: utf-8

# ruby-bash - User-Friendly Versions of Bash Commands Built in Ruby
#
# Copyright (c) 2020 Andy Maleh
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'
require 'juwelier'
Juwelier::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "ruby-bash"
  gem.homepage = "http://github.com/AndyObtiva/ruby-bash"
  gem.license = "GPL-3.0"
  gem.summary = %Q{Ruby Bash}
  gem.description = %Q{User-Friendly Versions of Bash Commands Built in Ruby}
  gem.post_install_message = "\nTo finish setting up the ruby-bash Ruby gem in your shell environment, run: ruby-bash-setup\n\n"
  gem.email = "andy.am@gmail.com"
  gem.authors = ["andy_maleh"]
  gem.executables = ['ruby-bash-setup']
  gem.files = Dir['README.md', 'LICENSE*', 'CHANGELOG.md', 'VERSION', 'bin/**/*', 'lib/**/*']
  # dependencies defined in Gemfile
end
Juwelier::RubygemsDotOrgTasks.new
require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
end

desc "Code coverage detail"
task :simplecov do
  ENV['COVERAGE'] = "true"
  Rake::Task['spec'].execute
end

task :default => :spec

require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "ruby-bash #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
