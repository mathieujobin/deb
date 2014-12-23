class Deb::Tasks::Query < Thor
  namespace :query

  desc "all", "list all installed packages"
  def all
    `dpkg -l`
  end

  desc 'info', "Show info about a package"
  def info(pkgname)
    `dpkg -s #{pkgname}`
  end
  desc 'files', "List files installed from a package"
  def files(pkgname)
    `dpkg -l #{pkgname}`
  end

  def self.banner(task, namespace = true, subcommand = false)
    "#{basename} #{task.formatted_usage(self, true, subcommand)}"
  end

  private
  include Deb::Utils
end
