Gem::Specification.new do |s|
  s.name = "ahn-plugin-demo"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Luca Pradovera", "Juan de Bravo"]

  s.date = Date.today.to_s
  s.description = "Demo plugin for the new Adhearsion plugin system."
  s.email = "dev&adhearsion.com"

  s.files = `git ls-files`.split("\n")

  s.has_rdoc = false
  s.homepage = "http://github.com/polysics/ahn-plugin-demo"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.2.0"
  s.summary = "Demo plugin for the new Adhearsion plugin system"

  s.add_runtime_dependency 'adhearsion', ['~> 1.2.0']
  s.add_runtime_dependency 'activesupport'

  s.specification_version = 2
end
