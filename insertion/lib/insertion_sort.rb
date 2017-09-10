class InsertionSort

  attr_reader :provided_array

  def initialize(provided_array = [])
      @provided_array = provided_array
  end

  def sort(unsorted)
    sorted = []
    until unsorted.empty?
      insert_entry(unsorted.pop, sorted)
    end
    sorted
  end

  def insert_entry(entry, sorted)
    point = find_point(entry, sorted)
    return sorted << entry if point.nil?

    insertion_point = sorted.index(point)
    sorted.insert(insertion_point, entry)
  end

  def find_point(entry, sorted)
    sorted.find { |element| entry < element }
  end

  def inplace_sort(sortee = @provided_array)
    repeats = sortee.count
    repeats.times do
      insert_entry(sortee.pop, sortee)
    end
    sortee
  end

end
