class Series
  attr_reader :raw

  def initialize(raw)
    @raw = raw
  end

  def slices(len)
    fail(ArgumentError, "Cannot slice more than string's length") if len > @raw.length
   
    array = []

    while len <= @raw.length
      arr = []
      #binding.pry
      len.times do |index|
        arr << @raw[index].to_i
      end
      #binding.pry 
      @raw = @raw[1..((@raw.length)-1)]
      array << arr
    end

    array
  end
end


