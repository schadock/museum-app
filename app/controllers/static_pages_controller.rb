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
end
