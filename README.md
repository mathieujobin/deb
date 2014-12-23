deb
===

Wrapper tool over apt* gpkg* with a rpm/yum command line interface.

## Installation

```bash
gem install deb
```


## Usage
```
Commands:
  deb erase <package>            # Delete an installed package
  deb freshen <package>          # Should clean up things that were modified
  deb help [COMMAND]             # Describe available commands or one specific command
  deb install <package>          # install package, be it a .deb file or not
  deb query <command>            # package query tool.
  deb system SUBCOMMAND ...ARGS  # debian system tools
  deb verify SUBCOMMAND ...ARGS  # package verify tools
  deb whoami                     # output result of who am i and whoami
```
## Contributing

1. Fork it ( https://github.com/[my-github-username]/deb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
