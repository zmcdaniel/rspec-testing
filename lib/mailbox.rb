class MailBox

  attr_accessor :letters, :packages

  def initialize(letters, packages)
    @letters = letters
    @packages = packages
  end

  def add_letter
    @letters = letters + 1
  end

  def add_package
    @packages = packages + 1
  end

  def clear
    @packages = 0
    @letters = 0
  end
end
