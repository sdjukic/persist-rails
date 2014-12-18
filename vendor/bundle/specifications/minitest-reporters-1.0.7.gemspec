# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "minitest-reporters"
  s.version = "1.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alexander Kern"]
  s.date = "2014-10-23"
  s.description = "Death to haphazard monkey-patching! Extend Minitest through simple hooks."
  s.email = ["alex@kernul.com"]
  s.homepage = "https://github.com/CapnKernul/minitest-reporters"
  s.require_paths = ["lib"]
  s.rubyforge_project = "minitest-reporters"
  s.rubygems_version = "2.0.3"
  s.summary = "Create customizable Minitest output formats"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<minitest>, [">= 5.0"])
      s.add_runtime_dependency(%q<ansi>, [">= 0"])
      s.add_runtime_dependency(%q<ruby-progressbar>, [">= 0"])
      s.add_runtime_dependency(%q<builder>, [">= 0"])
      s.add_development_dependency(%q<maruku>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<minitest>, [">= 5.0"])
      s.add_dependency(%q<ansi>, [">= 0"])
      s.add_dependency(%q<ruby-progressbar>, [">= 0"])
      s.add_dependency(%q<builder>, [">= 0"])
      s.add_dependency(%q<maruku>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<minitest>, [">= 5.0"])
    s.add_dependency(%q<ansi>, [">= 0"])
    s.add_dependency(%q<ruby-progressbar>, [">= 0"])
    s.add_dependency(%q<builder>, [">= 0"])
    s.add_dependency(%q<maruku>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
