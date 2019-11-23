require 'sinatra'
require 'haml'

get '/' do
  gifs = [
    'http://gifgifmagazine.com/wp-content/uploads/2018/04/pas-covjek-i-bazen.gif',
    'https://media0.giphy.com/media/R00HEmpE7qYSs/giphy.gif',
    'https://media2.giphy.com/media/mRB9PmJFOjAw8/giphy.gif',
    'https://media3.giphy.com/media/ToMjGpA1hOaWo1LoWgE/giphy.gif',
    'https://media3.giphy.com/media/ToMjGpA1hOaWo1LoWgE/giphy.gif'
  ]

  @rand_gif = gifs[rand(gifs.length)]

  haml :index, :format => :html5
end
