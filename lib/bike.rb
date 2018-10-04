class Bike

  def initialize
    $bike_status = true
  end

  def working?
    return $bike_status
  end
end
