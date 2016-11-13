require 'rubygems'
require 'camping'
require 'markaby'
require 'active_record'
require 'pry'
require 'better_errors'
Camping.goes :Schwad
require_relative 'schwad/helpers'
require_relative 'schwad/models'
require_relative 'schwad/views'
require_relative 'schwad/controllers'

#this is kind of a miniature initializers.rb area
def Schwad.create
  # Schwad::Models.create_schema_info
  # Schwad::Models.create_schema
end

# run Rack::Adapter::Camping.new(Schwad)
