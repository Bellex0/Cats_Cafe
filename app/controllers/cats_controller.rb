class CatsController < ApplicationController

    def index
        @cats = Cat.all
    end 

    def show 
        @cat = Cat.find(params[:id])
        @servers = @cat.servers
    end

    def new 
        @cat = Cat.new
    end 

    def create 
        @cat = Cat.create(params.require(:cat).permit(:name, :breed, :age))
        redirect_to cat_path(@cat)
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

    def destroy 
        @cat = Cat.find(params[:id])
        @cat.destroy
        redirect_to cats_path
    end

    




    
end
