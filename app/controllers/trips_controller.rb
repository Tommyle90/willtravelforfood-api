class TripsController < ProtectedController
  before_action :set_trip, only: %i[show update destroy]

  # GET /examples
  # GET /examples.json
  def index
    @trips = current_user.trips.order(date: :asc)
    render json: @trips
  end

  # GET /examples/1
  # GET /examples/1.json
  def show
    render json: @trip
  end

  # POST /examples
  # POST /examples.json
  def create
    @trip = current_user.trips.build(trip_params)

    if @trip.save
      render json: @trip, status: :created
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /examples/1
  # PATCH/PUT /examples/1.json
  def update
    if @trip.update(trip_params)
      render json: @trip
    else
      render json: @trip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /examples/1
  # DELETE /examples/1.json
  def destroy
    @trip.destroy

    head :no_content
  end

  def set_trip
    @trip = current_user.trips.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:city, :date, :user_id, :restaurant)
  end

  private :set_trip, :trip_params
end
