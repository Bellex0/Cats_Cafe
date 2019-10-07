class CatsController < ApplicationController

    def index
        @cats = Cat.all
        # @cat = Cat.find(params[:id])
    end 

    def show 
        @cat = Cat.find(params[:id])
        @servers = @cat.servers
    end

    def new 
        @cat = Cat.new
        redirect_to new_cat_path
    end 

    def edit 
        @cat = Cat.find(params[:id])
    end 

    def update 
        @cat = Cat.find(params[:id])
        cat = Cat.update(params.require(:cat).permit(:name, :breed, :age))
        @servers = @cat.servers
        redirect_to cat_path(@cat)
    end

    # def create 
    #     @cat = Cat.create(params.require(:cat).permit(:name, :breed, :age))
    # end




    
end
