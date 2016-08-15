class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.with_trainers
    render :all_pokemons
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    pokemon = Pokemon.new(pokemon_params)
    if pokemon.save
      redirect_to :root
    else
      flash[:errors] = pokemon.errors.full_messages
      redirect_to :back
    end
  end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  def edit
    @pokemon = Pokemon.find(params[:id])
  end

  def update
    pokemon = Pokemon.find(params[:id])
    if pokemon.update(pokemon_params)
      redirect_to :root
    else
      flash[:errors] = pokemon.errors.full_messages
      redirect_to :back      
    end
  end

  def destroy
    Pokemon.find(params[:id]).destroy
    redirect_to :root
  end

private
  def pokemon_params
    params.require(:pokemon).permit(:name, :element)
  end  
end