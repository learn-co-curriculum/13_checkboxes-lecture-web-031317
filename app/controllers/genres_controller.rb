class GenresController < ApplicationController

  get '/genres' do
    @genres = Genre.all
    erb :'genres/index.html'
  end

  post '/genres' do
    genre = Genre.create(name: params[:name])
  end

end
