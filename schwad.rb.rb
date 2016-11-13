ruby do
  require 'rubygems'
  require 'camping'
  require 'activerecord'
  require 'markaby'
  Camping.goes :Schwad
  require 'schwad/helpers'
  require 'schwad/models'
  require 'schwad/views'
  require 'schwad/controllers'
end

#this is kind of a miniature initializers.rb area
ruby do
  def Schwad.create
    Schwad::Models.create_schema
  end
end

run Rack::Adapter::Camping.new(Schwad)
