class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get "/items" do
    items = Item.all
    items.to_json(include: [:reviews])
  end

  get "/reviews" do
    reviews = Review.all
    reviews.to_json
  end

  delete '/items/:id' do
    item = Item.find params[:id]
    item.destroy
    item.to_json
  end
  
end