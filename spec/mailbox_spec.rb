require_relative '../lib/mailbox.rb'

describe MailBox do
  before(:context) do
    @mailbox1 = MailBox.new(4, 8)
    @mailbox2 = MailBox.new(20, 7)
  end

  describe 'Initialization' do
    it 'is an instance of the MailBox class' do
      expect(@mailbox1).to be_instance_of(MailBox)
    end
  end

  describe 'Accessors' do
    it 'should get letters' do
      expect(@mailbox1.letters).to eq(4)
    end
    it 'should get packages' do
      expect(@mailbox1.packages).to eq(8)
    end
    it 'should not set letters' do
      @mailbox1.letters = 2394 if respond_to? :letters=
      expect(@mailbox1.letters).to eq(4)
    end
    it 'should not set packages' do
      @mailbox1.packages = 2394 if respond_to? :packages=
      expect(@mailbox1.packages).to eq(8)
    end
  end

  describe 'Methods' do
    it 'should add a letter to the mailbox' do
      @mailbox1.add_letter
      expect(@mailbox1.letters).to eq(5)
    end
    it 'should add a package to the mailbox' do
      @mailbox1.add_package
      expect(@mailbox1.packages).to eq(9)
    end
    it 'should clear the mailbox of all letters and packages' do
      @mailbox1.clear
      expect(@mailbox1.letters).to eq(0)
      expect(@mailbox1.packages).to eq(0)
    end
  end
end
