#-*- mode: ruby -*-

file = File.expand_path('../../../../jar-dependencies.gemspec', __FILE__ )
spec = Dir.chdir( File.dirname( file ) ) do 
  eval( File.read( file  ) )
end

Gem::Specification.new do |s|
  s.name = 'first'
  s.version = '1.1.1'
  s.author = 'example person'
  s.email = [ 'mail@example.com' ]
  s.summary = 'first gem with jars vendored during installation'

  s.platform = 'java'
  s.files << Dir[ 'lib/**/*.rb' ]
  s.files << Dir[ '*file' ]
  s.files << 'first.gemspec'

  s.add_runtime_dependency 'jar-dependencies', spec.version

  s.requirements << "jar 'org.apache.hbase:hbase-annotations', '=0.98.7-hadoop2'"
end

# vim: syntax=Ruby
