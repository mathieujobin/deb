class FriendlyDeb < Thor
  desc "install <package>", "install package, be it a .deb file or not"
  def install(pkgname)
    if File.exists?(pkgname)
      `gdebi #{pkgname}`
    else
      `apt-get install #{pkgname}`
    end
  end

  desc "query"
  option :a, 'all'
  option :l
  option :i
  option :f
  def query
  end

end
