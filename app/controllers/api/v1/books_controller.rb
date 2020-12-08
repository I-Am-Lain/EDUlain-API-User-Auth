class Api::V1::BooksController < ApplicationController

    def index 
        books = Book.all
        render json: books
    end

    def create
        book = Book.create(title: params[:title])
        render json: book
    end
end
