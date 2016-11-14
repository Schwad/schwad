require_relative 'helpers'
require 'humanize'
module Schwad::Views
  require_all 'schwad/posts/*.rb'

  def layout
    html do
      title { 'Schwad' }
      body { self << yield }
    end
  end

  def posts
    iterator = 2
    total = 2
    total.times do
      li { eval "#{iterator.humanize.underscore}_post"}
      iterator -= 1
    end
  end

  def index
    h2 'Hi. My name is Schwad'

    h3 'Posts:'
    ol.content! {
      posts
    }
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
  end

  def sample
    p 'Nothing to see here move along.'
  end
end
