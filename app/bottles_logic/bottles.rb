class Bottles99

  def verse(num)
    "#{quantity(num)} #{container(num)} of beer on the wall, #{quantity(num).downcase} #{container(num)} of beer.\n" + 
    "#{action(num)}, #{quantity(num-1).downcase} #{container(num-1)} of beer on the wall.\n"
  end

  def action(num)
    case num
    when 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(num)} down and pass it around"
    end
  end

  def quantity(num)
    case num
    when -1
      "99"
    when 0
      "No more"
    else
      "#{num}"
    end
  end

  def pronoun(num)
    case num
    when 1
      "it"
    else
      "one"
    end
  end
 
  def container(num)
    case num
    when 1
      "bottle"
    else
      "bottles"
    end
  end

  def verses(upper_bound, lower_bound)
    upper_bound
    .downto(lower_bound)
    .collect {|verse_number| verse(verse_number)}
    .join("\n")
  end

  def song
    verses(99,0)
  end

end
