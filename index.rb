require 'sinatra'
require 'slim'
require 'unsplash'

get '/:name' do |name|
  Unsplash.configure do |config|
    config.application_id     = "5537d2543dba94547e8d4b48915fbb8aa2486ef67b3f5ca27d20edaad2f02189"
    config.application_secret = "41da032525cbdf7fd602fa02073180c915f4b54db56a3976a6bdc841ca828620"
    config.application_redirect_uri = "https://your-application.com/oauth/callback"
  end

  slim :index
end
