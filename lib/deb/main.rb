require 'deb/tasks'
trap("SIGINT") { exit! }

class Deb::Main < Thor

  desc "install <package>", "install package, be it a .deb file or not"
  method_options :yes => :boolean, :aliases => "-y"
  def install(pkgname)
    if File.exists?(pkgname)
      e "gdebi #{pkgname}"
    else
      e "apt-get install #{pkgname}"
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
    e "apt-get remove #{pkgname}"
  end

  desc "whoami", "output result of who am i and whoami"
  def whoami
    puts "#{current_user} => #{`who am i`}"
    puts "ENV => #{ENV.inspect}"
  end

  register(Deb::Tasks::Query, 'query', 'query <command>', 'package query tool.')
  desc "verify SUBCOMMAND ...ARGS", "package verify tools"
  subcommand "verify", Deb::Tasks::Verify

  private
  # execute command managing whether sudo is required.
  def e(cmd)
    puts current_user.inspect
    s = current_user == 'root' ? '' : 'sudo'
    `#{s} #{cmd}`
  end

  def current_user
    `whoami`.chomp
  end
end
