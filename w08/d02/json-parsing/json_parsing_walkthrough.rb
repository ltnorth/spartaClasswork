class ParseJson 
  def initialize(json_file)
    @json_file = JSON.parse(File.read(json_file))
  end
  
  def base
    @json_file['base']
  end

  def date
    Date.parse(@json_file['date'])
  end

  def count_rates
    @json_file['rates'].length
  end

  def floats?
    rates = @json_file['rates']
    rates.each do |key, value|
      if !value.is_a? Float  
        return false
      end    
    end
    true
  end
  
end