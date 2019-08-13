class BandpassFilter


  def filter(soundwave_array,upper_limit,lower_limit)
    raise "There are nils contained within the soundwave" if soundwave_array.include?(nil)

    soundwave_array.map { |frequency|
      if frequency > upper_limit
        upper_limit
      elsif frequency < lower_limit
        lower_limit
      else
        frequency
      end
    }
  end

end
