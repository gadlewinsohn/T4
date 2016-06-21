require 'sinatra/base'

module SlackBot
  class Web < Sinatra::Base
    get '/' do
      'You know nothing'
    end
  end
end
