require 'deb/query_tasks'

class Deb::Tasks::Verify < Thor
  desc "all", "verify all packages"
  def all
    puts "unimplemented, pull requests welcome."
  end
  desc "file", "verify a single file"
  def file
    puts "unimplemented, pull requests welcome."
  end
end

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

  desc "upgrade <package>", "Same as installed, provided by convenience"
  def upgrade(pkgname)
    install(pkgname)
  end

  desc "freshen <package>", "Should clean up things that were modified"
  def freshen(pkgname)
    puts "unimplemented, pull requests welcome."
  end

  desc "erase <package>", "Delete an installed package"
  def erase(pkgname)
    `#{s} apt-get remove #{pkgname}`
  end

  desc "test: who am i", "output result of who am i and whoami"
  def whoami
    puts [`who am i`, `whoami`, ENV].inspect
  end

  register(Deb::QueryTasks, 'query', 'query <command>', 'package query tool.')
  desc "verify SUBCOMMAND ...ARGS", "package verify tools"
  subcommand "verify", Deb::Commands::Verifyqqq

end
