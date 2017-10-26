require 'fizzbuzz'

describe Fizzbuzz do
  describe 'fizzbuzzer method' do
    context 'when given 1' do
      it 'returns 1' do
        expect(Fizzbuzz.fizzbuzzer(1)).to eql(1)
      end
    end

    context 'when given 3' do
      it 'returns Fizz' do
        expect(Fizzbuzz.fizzbuzzer(3)).to eql("Fizz")
      end
    end

    context 'when given 5' do
      it 'returns Buzz' do
        expect(Fizzbuzz.fizzbuzzer(5)).to eql("Buzz")
      end  
    end

    context 'when given 15' do
      it 'returns FizzBuzz' do
        expect(Fizzbuzz.fizzbuzzer(15)).to eql("FizzBuzz")
      end  
    end

    context 'when given a string' do
      it 'returns an argument error' do
        expect{Fizzbuzz.fizzbuzzer("String")}.to raise_error(ArgumentError)
      end      
    end 

    context 'when given a hash' do
      it 'returns an argument error' do
        expect{Fizzbuzz.fizzbuzzer({1 => 210})}.to raise_error(ArgumentError)        
      end      
    end 

    context 'when given an array' do
      it 'returns an argument error' do
        expect{Fizzbuzz.fizzbuzzer([15])}.to raise_error(ArgumentError)        
      end      
    end 

    context 'when given a decimal' do
      it 'returns an argument error' do
        expect{Fizzbuzz.fizzbuzzer(3.14159)}.to raise_error(ArgumentError)        
      end      
    end 

  end

  describe 'range_buzzer' do
    context 'when given an array' do
      it 'returns an array' do
        expect(Fizzbuzz.range_buzzer((1..100).to_a)).to be_instance_of(Array)        
      end      
    end

    context 'when given a range that includes multiples of three' do
      it 'returns at least one Fizz' do
        expect(Fizzbuzz.range_buzzer((1..3).to_a)).to include("Fizz")        
      end      
    end 

    context 'when given a range that includes multiples of five' do
      it 'returns at least one Buzz' do
        expect(Fizzbuzz.range_buzzer((1..5).to_a)).to include("Buzz")        
      end      
    end 

    context 'when given a string' do
      it 'returns an argument error' do
        expect{Fizzbuzz.range_buzzer("String")}.to raise_error(ArgumentError)
      end      
    end 

    context 'when given a hash' do
      it 'returns an argument error' do
        expect{Fizzbuzz.range_buzzer({1 => 210})}.to raise_error(ArgumentError)        
      end      
    end 

    context 'when given number' do
      it 'returns an argument error' do
        expect{Fizzbuzz.range_buzzer(15)}.to raise_error(ArgumentError)        
      end      
    end 


  end

end

