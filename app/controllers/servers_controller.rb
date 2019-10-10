class ServersController < ApplicationController

    def index 
        @servers = Server.all
    end

    def show 
        @server = Server.find(params[:id])
        @cats = @server.cat
    end

    def new 
        @server = Server.new
    end

    def create 
        @server = Server.create(params.require(:server).permit(:name, :cat_id))
        redirect_to server_path(@server)
    end

    def edit 
        @server = Server.find(params[:id])
    end

    def update 
        @server = Server.find(params[:id])
        @server.update(params.require(:server).permit(:name, :cat_id))
        redirect_to server_path(@server)
    end

    def destroy 
        @server = Server.find(params[:id])
        @server.destroy
        redirect_to servers_path
    end

end
