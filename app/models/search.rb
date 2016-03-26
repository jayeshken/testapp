class Search < ActiveRecord::Base
    
    def search_books
        books=Book.all
        books=books.where(["name LIKE ?","%#{name}%"]) if name.present?
        return books
        
    end    
end
