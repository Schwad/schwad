require_relative 'helpers'

module Schwad::Views
  project_root = File.dirname(File.absolute_path(__FILE__))
  Dir.glob(project_root + '/posts/*') {|file| require file}
  def layout
    html do
      title { 'Schwad' }
      body { self << yield }
    end
  end

  def index
    begin
      #This is where I will put the title
      h2 'Hi. My name is Schwad'
      #This is where I will iterate through each post title with a link to each post
      h3 'Posts:'
        ol do
          ALL_POSTS.each do |post|
            li post[1]
          end
        end
      br
      h3 'Links and stuff:'
      ul do
        li { a 'Source', :href => 'https://github.com/schwad'}
        li { a 'PorkCasts', :href => 'http://www.porkcast.com'}
        li { a '1033 Logger', :href => 'http://www.1033logger.com'}
        li { a 'Best Seat Plymouth', :href => 'https://bestseatplymouth.herokuapp.com'}
        li { a 'S&P Aristocrats Dividend Yields', :href => 'http://arcane-fortress-84704.herokuapp.com/'}
        li { a 'Faster Mechanical Turk Aid', :href => 'https://github.com/schwad/faster-turking'}
        li { a 'Schwaddy News', :href => 'https://schwaddy-news.herokuapp.com'}
        li { a 'Montana Votes 2016', :href => 'https://montanavotes2016.herokuapp.com'}
      end
    rescue => e
      binding.pry
    end
  end

  def sample
    p 'Nothing to see here move along.'
  end

end
