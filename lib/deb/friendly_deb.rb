class FriendlyDeb < Thor
  desc "install <package>", "install package, be it a .deb file or not"
  def install(pkgname)
    if File.exists?(pkgname)
      `gdebi #{pkgname}`
    else
      `apt-get install #{pkgname}`
    end
  end

  desc "query", "package query tool"
  option :a => :boolean
  option :l => :boolean
  option :i => :boolean
  option :f => :boolean
  def query
  end

end
