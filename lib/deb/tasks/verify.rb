class Deb::Tasks::Verify < Thor
  desc "all", "verify all packages"
  def all
    `dpkg -C`
  end
  desc "file", "verify a single file"
  def file
    puts "unimplemented, pull requests welcome."
  end

  private
  include Deb::Utils
end
