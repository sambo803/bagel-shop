class ApplicationController < ActionController::API
  def index
    bagels = Bagel.all
    render json: bagels.as_json
  end

  def create
    bagel = Bagel.new(
      flavor: params[:flavor],
      toasted: params[:toasted],
      topping: params[:topping],
      price: params[:price],
    )
    bagel.save
    render json: bagel.as_json
  end

  def show
    bagel = Bagel.find_by(id: params[:id])
    render json: bagel.as_json
  end

  def update
    bagel = Bagel.find_by(id: params[:id])
    bagel.flavor = params[:flavor] || bagel.flavor
    bagel.toasted = params[:toasted] || bagel.toasted
    bagel.topping = params[:topping] || bagel.topping
    bagel.price = params[:price] || bagel.price
    bagel.save
    render json: bagel.as_json
  end

  def destroy
    bagel = Bagel.find_by(id: params[:id])
    bagel.destroy
    render json: { message: "bagel has been destroyed" }
  end
end
