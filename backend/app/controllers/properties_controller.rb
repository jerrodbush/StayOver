class PropertiesController < ApplicationController

    get '/properties' do
        properties = Property.all
        properties.to_json
    end

    get '/properties/:id' do 
        property = Property.find(params[:id])
        property.to_json
    end

    get '/properties/:id/reviews' do 
        property = Property.find(params[:id])
        property.to_json(include: {reviews: {include: :user}})
    end

    post '/properties' do 
        property = Property.create(params)
        property.to_json
    end
end