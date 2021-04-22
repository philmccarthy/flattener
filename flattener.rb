def flattener(array, results = [])
  array.each do |element|
    element.class == Array ? flattener(element, results) : results << element
  end
  results
end
