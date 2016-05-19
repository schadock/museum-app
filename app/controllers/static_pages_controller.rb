class StaticPagesController < ApplicationController
  def home
    @types = Type.all
  end

  def map
    @types = Type.all
  end

  def contact
    @types = Type.all
  end

  def collections
    @types = Type.all    
  end

  def tour
    @exhibits = Exhibit.search(params[:keyword]).collection(params[:collection]).order(ex_id: :asc)
    @types = Type.all
  end
end
