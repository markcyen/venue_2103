class Venue
  attr_reader   :name,
                :capacity,
                :patrons

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @patrons = []
  end

  def add_patron(first_name)
    @patrons << first_name
  end

  def yell_at_patrons
    new_array = []
    @patrons.each do |cap_names|
      new_array << cap_names.upcase
    end
    new_array
  end

  def over_capacity?
    if @patrons.length > 3
      true
    else
      false
    end
  end

  def kick_out
    while @patrons.length > 3
      @patrons.pop
    end
    @patrons
  end

end
