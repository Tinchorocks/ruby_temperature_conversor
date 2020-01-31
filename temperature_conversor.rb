class TemperatureConversor
  class << self 
    def c_to_f(c)
      ans = c*1.8+32
    end

    def f_to_c(f)
      ans = (f-32)/1.8
    end

    def f_to_k(f)
      ans = (f+459.65)*5/9
    end

    def k_to_f(k)
     ans = k * 9/5 - 459.67
    end

    def c_to_k(c)
      ans = c + 273.15
    end

    def k_to_c(k)
      ans = k - 273.15
    end

    def convert_temp(temperature, input_scale: 'celsius', **options)
      os = options[:output_scale].nil? ? 'celsius' : options[:output_scale]  
      temperature = temperature.to_f
      return temperature if input_scale == os

      case input_scale
      when 'celsius'
        if os == 'fahrenheit'
          c_to_f(temperature)
        elsif os == 'kelvin'
          c_to_k(temperature)
        end
      when 'fahrenheit'
        if os == 'celsius'
          f_to_c(temperature)
        elsif os == 'kelvin'
          f_to_k(temperature)
        end
      when 'kelvin'
        if os == 'celsius'
          k_to_c(temperature)
        elsif os == 'fahrenheit'
          k_to_f(temperature)
        end
      end
    end
  end
end
