class FavoritesController < ApplicationController
    get '/favorites' do 
        users = Favorite.all 
        users.to_json
    end

    get '/favorites/:id' do 
        favorite = Favorite.find(params[:id])
        favorite.to_json
    end

    post '/favorites' do 
        favorite = Favorite.create(params)
        favorite.to_json
    end

    delete '/favorites/:id' do 
        favorite = Favorite.find(params[:id])
        favorite.destroy
        favorite.to_json
    end
end