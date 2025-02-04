class Venue

  attr_reader :name, :capacity, :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(patron)
    @patrons << patron
  end

  def yell_at_patrons
    @patrons.map {|person| person.upcase}
  end

  def over_capacity?
     @patrons.count > @capacity
  end

  def kick_out
    while @patrons.count > @capacity
    @patrons.pop
    end
  end

end
