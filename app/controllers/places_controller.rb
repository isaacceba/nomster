class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def new
    @place= Place.new
  end

  def create
    Place.create(place_params)
    redirect_to root_path
  end

  private

  def place_params
    params.require(:place).permit(:name, description, :address)
  end

end


def self.search(term, current_page)
  if term
    page(current_page).where('name LIKE ?', "%#{term}%").order('id DESC')
  else
    page(current_page).order('id DESC') 
  end



def self.search(term, page)
  if term
    where('name LIKE ?', "%#{term}%").paginate(page: page, per_page: 5).order('id DESC')
  else
    paginate(page: page, per_page: 5).order('id DESC') 
  end
  
end
