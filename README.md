# puppet-liteide
Puppet module for LiteIDE

## Usage
```puppet

# For default version
include liteide

# For a custom version
class { 'liteide':
  version => '27.1'
}

```

## Required Boxen Modules
* `boxen`

## Development

Write code. Run `script/cibuild` to test it. Check the `script`
directory for other useful tools.

