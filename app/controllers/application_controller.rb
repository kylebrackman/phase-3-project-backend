class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here

  get '/items' do
    items = Item.all
    items.to_json(include: [:reviews])
  end

  get '/items/:id' do 
    item = Item.find_by(id: params[:id])
    item.to_json(include: [:reviews])
  end

  delete '/items/:id' do
    item = Item.find params[:id]
    item.destroy
    item.to_json
  end

  post '/items' do
    item = Item.create(
      item_name: params[:itemName],
      item_type: params[:itemType],
        )
    item.to_json(include: [:reviews])
  end

  get '/reviews' do
    reviews = Review.all
    reviews.to_json
  end

  post '/reviews' do
    review = Review.create(
      review: params[:review],
      item_rating: params[:item_rating],
      reviewer_name: params[:reviewer_name],
      item_id: params[:item_id]
    )
    review.to_json
  end

  patch '/reviews/:id' do
    review = Review.find params[:id]
    review.update(
      review: params[:review],
      item_rating: params[:item_rating]
    )
    review.to_json
  end

end