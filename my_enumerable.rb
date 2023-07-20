module MyEnumerable
  def all?
    flag = true
    each do |n|
      flag = false unless yield n
    end
    flag
  end

  def any?
    flag = false
    each do |n|
      flag = true if yield n
    end
    flag
  end

  def filter
    arr = []
    each do |n|
      arr.push(n) if yield n
    end
    arr
  end
end
