class BooksController < ApplicationController


    def index
        books = Book.all 
        render json: books 
    end

    def show
        book = Book.find(params[:id])
        render json: book 
    end


    def create 
        Book.create(book_params)
        book = Book.all
        render json: book
    end
    
    
    def update
        book = Book.update 
        
    end

    private 

    def book_params
        # byebug
        params.require(:book).permit(:title, :author, :genre, :img, :user_id)
    end

    end
