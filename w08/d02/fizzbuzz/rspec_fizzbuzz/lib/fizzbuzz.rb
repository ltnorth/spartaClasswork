class Fizzbuzz
  def self.fizzbuzzer num
    raise ArgumentError, 'Not an integer' unless num.instance_of? Integer
    buzzers = {3 => "Fizz", 5 => "Buzz"}
    result = ""
    buzzers.each do |key, value|
      num % key == 0 ? result += value : result
    end
    result == "" ? num : result
  end

  def self.range_buzzer(array)
    raise ArgumentError, 'No array given' unless array.is_a? Array
    array.map! { |num| Fizzbuzz.fizzbuzzer(num) } 
  end
end