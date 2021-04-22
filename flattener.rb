def flattener(array, results = [])
  array.each do |element|
    if element.class == Array
      flattener(element, results)
    else
      results << element
    end
  end
  results
end
