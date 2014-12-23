class Deb::Tasks::Query < Thor
  namespace :query

  desc "all", "list all installed packages"
  def all
    puts 'all'
  end

  desc 'info', "Show info about a package"
  def info
    puts 'info'
  end
  desc 'files', "List files installed from a package"
  def files
    puts 'list files of a package'
  end

  def self.banner(task, namespace = true, subcommand = false)
    "#{basename} #{task.formatted_usage(self, true, subcommand)}"
  end

  private
  include Deb::Utils
end
