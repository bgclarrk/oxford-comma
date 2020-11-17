def oxford_comma(array)
    num_words = array.count()
    if num_words > 2
        num_words = num_words - 1
        array.each_with_index do |item, index|
            if index < num_words
                array[index] << ", "
            else
                array[index - 1] << "and "
                puts array
                return array.join
            end
        end  
    elsif num_words > 1
        return array.join(" and ")
    else
        return array.join()
    end
end