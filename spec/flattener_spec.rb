require 'spec_helper'
require './flattener'

RSpec.describe 'flattener' do
  describe 'flattens' do
    it 'a singularly nested array' do
      array = [ 0, 1, 2, [ 3, 4 ] ]
      expect(flattener(array)).to eq([0, 1, 2, 3, 4])
    end

    it 'a deeply nested array of strings' do
      array_of_strings = ["hi", "this is", [[["string"], "that is very"], [[[["nested"]]]]]]

      expect(flattener(array_of_strings)).to eq(["hi", "this is", "string", "that is very", "nested"])
    end
    
    it 'a deeply nested array of ints' do
      array_of_ints = [1, 2, 3, [[4], 5], [[[6]]]]
      expect(flattener(array_of_ints)).to eq([1, 2, 3, 4, 5, 6])
    end
  end
end