require 'pry'

class UsersController < ApplicationController
    get '/test' do
        "We are live"
    end

    get '/users' do 
        users = User.all
        users.to_json(include: {favorites: {include: :property}})
    end

    get '/users/:id/favorite_properties' do 
        user = User.find(params[:id])
        user.to_json(include: {favorites: {include: :property}})
    end

    post '/users' do 
        # {"username"=>"jbush", "password"=>"random", "first_name"=>"jerrod", "last_name"=>"bush", "email"=>"123@gmail.com", "phone_number"=>123456789}
        # user = User.create(username: params[:username], password: params[:password], first_name: params[:first_name], last_name: params[:last_name], email: params[:email], phone_number: params[:phone_number])

        user = User.create(params)

        user.to_json

    end

    # fetch current user data
    get '/users/:id' do
        user = User.find(params[:id])
        user.to_json(include: {reviews: {include: :property}})
    end

end