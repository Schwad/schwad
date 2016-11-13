require_relative '../schwad.rb'
module Schwad::Models
  class Page < Base
  end

  #You have to manually add in each migration with a new version number and new class name.
  class BasicFields < V 1.0
    def self.up
      create_table Page.table_name do |t|
        t.string :title
        t.text   :content
        t.timestamps
      end
    end

    def self.down
      drop_table Page.table_name
    end
  end
end
