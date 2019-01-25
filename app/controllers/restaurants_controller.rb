class RestaurantsController < ProtectedController
  before_action :set_trip, only: %i[index create destroy update set_restaurant]
  before_action :set_restaurant, only: %i[show update destroy]

  # GET /restaurants
  def index
    @restaurants = @trip.restaurants

    render json: @restaurants
  end

  # GET /restaurants/1
  def show
    render json: @restaurant
  end

  # POST /restaurants
  def create
    @restaurant = @trip.restaurants.build(restaurant_params)

    if @restaurant.save
      render json: @restaurant, status: :created, location: @restaurant
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    if @restaurant.update(restaurant_params)
      render json: @restaurant
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /restaurants/1
  def destroy
    @restaurant.destroy
  end

  private
  def set_trip
    @trip = current_user.trips.find(params[:restaurant][:trip_id])
  end
  # Use callbacks  to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = @trip.restaurants.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def restaurant_params
    params.require(:restaurant).permit(:trip_id, :name, :address, :telephone, :dish)
    end
  private :set_restaurant, :restaurant_params
end
