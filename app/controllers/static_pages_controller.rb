class StaticPagesController < ApplicationController
  def home
  end

  def map
  end

  def contact
  end

  def collections
    @types = Type.all    
  end

  def tour
    @exhibits = Exhibit.search(params[:keyword]).filter(params[:filter]).order(ex_id: :asc)
  end
end
