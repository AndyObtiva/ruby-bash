# Generated by juwelier
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Juwelier::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: ruby-bash 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-bash".freeze
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["andy_maleh".freeze]
  s.date = "2020-09-06"
  s.description = "User-Friendly Versions of Bash Commands Built in Ruby".freeze
  s.email = "andy.am@gmail.com".freeze
  s.executables = ["ruby-bash-setup".freeze]
  s.extra_rdoc_files = [
    "CHANGELOG.md",
    "LICENSE.md",
    "README.md"
  ]
  s.files = [
    "CHANGELOG.md",
    "LICENSE.md",
    "README.md",
    "VERSION",
    "bin/ruby-bash-setup",
    "lib/ruby-bash.rb",
    "lib/ruby-bash/gdr.rb"
  ]
  s.homepage = "http://github.com/AndyObtiva/ruby-bash".freeze
  s.licenses = ["GPL-3.0".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Ruby Bash".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<tty-prompt>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5.0"])
    s.add_development_dependency(%q<rdoc>.freeze, ["~> 3.12"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.0"])
    s.add_development_dependency(%q<juwelier>.freeze, ["~> 2.1.0"])
    s.add_development_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_development_dependency(%q<puts_debuggerer>.freeze, [">= 0"])
  else
    s.add_dependency(%q<tty-prompt>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.5.0"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 3.12"])
    s.add_dependency(%q<bundler>.freeze, [">= 1.0"])
    s.add_dependency(%q<juwelier>.freeze, ["~> 2.1.0"])
    s.add_dependency(%q<simplecov>.freeze, [">= 0"])
    s.add_dependency(%q<puts_debuggerer>.freeze, [">= 0"])
  end
end

