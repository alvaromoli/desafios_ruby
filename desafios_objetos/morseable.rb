class Morseable
  def initialize(number)
    @number = number
    @hash = {
      0 => '-----',
      1 => '.----',
      2 => '..---',
      3 => '...--',
      4 => '....-',
      5 => '.....',
      6 => '-....',
      7 => '--...',
      8 => '---..',
      9 => '----.'
    }
  end
  def generate_hash(number)
    @hash[number]
  end
  def to_morse
    self.generate_hash(@number)
  end
end

m = Morseable.new(3)
print m.to_morse
