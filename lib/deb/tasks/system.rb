class Deb::Tasks::System < Thor
  namespace :system

  desc "update", "update list of available packages"
  def update
    e "apt-get update"
  end

  desc "upgrade", "proceed to system upgrade"
  def upgrade
    e "apt-get upgrade -V"
  end

  def self.banner(task, namespace = true, subcommand = false)
    "#{basename} #{task.formatted_usage(self, true, subcommand)}"
  end

  private
  include Deb::Utils
end
