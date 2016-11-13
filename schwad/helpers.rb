module Schwad::Helpers

  def self.load_posts
    Dir["../posts/*.rb"].each {|file| load file }
  end

  def self.thingy
    puts 'hurrah hurrah'
  end

end
