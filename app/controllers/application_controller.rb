require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    redirect to '/recipes'
  end

  get '/recipes' do

    @recipes = Recipe.all
    #binding.pry
    erb :index
  end

  get '/recipes/new' do
    erb :new
  end

  get '/recipes/:id' do
    #binding.pry
    @recipe = Recipe.find_by_id(params[:id])
    erb :show
  end

  post '/recipes/:id/delete' do
    
  end

  #post '/recipes' do
  #  @recipes = Recipe.create(name: params[:name], ingredients: params[:ingredients], cook_time: params[:cook_time])
  #  redirect to "/recipes/#{@recipe.id}"
  #end

end
