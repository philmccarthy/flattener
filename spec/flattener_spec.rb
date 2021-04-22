require 'spec_helper'
require 'flattener'

RSpec.describe 'flattener' do
  describe 'flattens' do
    it 'a singularly nested array' do
      array = [ 0, 1, 2, [ 3, 4 ] ]
      expect(flattener(array)).to eq(array.flatten)
    end
  end
end
