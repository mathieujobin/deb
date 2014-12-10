require 'deb/query_tasks'

class Deb::Main < Thor
  desc "install <package>", "install package, be it a .deb file or not"
  method_options :yes => :boolean, :aliases => "-y"
  def install(pkgname)
    if File.exists?(pkgname)
      `gdebi #{pkgname}`
    else
      `apt-get install #{pkgname}`
    end
  end

  register(Deb::QueryTasks, 'query', 'query <command>', 'package query tool.')
end
