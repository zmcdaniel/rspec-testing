require_relative '../lib/tree.rb'

describe Tree do
  before(:context) do
    @tree = Tree.new('oak', 65, 2)
  end

  describe 'Initialization' do
    it 'is an instance of the Tree class' do
      expect(@tree).to be_instance_of(Tree)
    end
    it 'should assign type' do
      expect(@tree.type).to eq('oak')
    end
    it 'should assign height' do
      expect(@tree.height).to eq(65)
    end
    it 'should assign age' do
      expect(@tree.age).to eq(2)
    end
  end

  describe 'Accessors' do
    it 'should be able to set/get height' do
      @tree.height = 7
      expect(@tree.height).to eq(7)
    end
    it 'should be able to set/get age' do
      @tree.age = 3
      expect(@tree.age).to eq(3)
    end
  end

  describe 'Methods' do
    it 'should grow the tree proportional to 1/10 the water amount' do
      @tree.grow_tree(20)
      expect(@tree.height).to eq(9)
    end
  end
end
