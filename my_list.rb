require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end
end

sample = MyList.new(1, 2, 3, 4)

p sample
sample.test
