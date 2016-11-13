require_relative 'helpers'
module Schwad::Controllers
  class Index < R '/'
    def get
      render :index
    end
  end

  class Page < R '/(\w+)'
    def get(page_name)
      render page_name
    end
  end
end
