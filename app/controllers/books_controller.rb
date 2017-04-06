class BooksController < ApplicationController

  # Index
  get '/books' do
    @books = Book.all
    erb :'books/index.html'
  end

  # New
  get '/books/new' do
    erb :'books/new.html'
  end

  # Create
  post '/books' do
    book = Book.create(params[:book])
    redirect "/books/#{book.id}"
  end

  # Show
  get '/books/:id' do
    @book = Book.find(params[:id])
    erb :'books/show.html'
  end

  # Edit
  get '/books/:id/edit' do
    @book = Book.find(params[:id])
    erb :'books/edit.html'
  end

  # Update
  patch '/books/:id' do
    book = Book.find(params[:id])
    book.update(params[:book])
    redirect to("/books/#{book.id}")
  end
end
