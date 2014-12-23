module Deb::Utils
  # execute command managing whether sudo is required.
  def e(cmd)
    s = current_user == 'root' ? '' : 'sudo'
    `#{s} #{cmd}`
  end

  def current_user
    `whoami`.chomp
  end
end
