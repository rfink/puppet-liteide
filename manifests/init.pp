# Public: Installs Pentaho Kettle
#
# Usage:
#
#   include pentahokettle
class liteide {
  $version = '27.1'
  $url = "http://sourceforge.net/projects/liteide/files/X${version}/liteidex${version}.macosx.zip/download"
  $tmpDest = '/tmp/liteide.zip'
  $appName = '/tmp/LiteIDE.app'

  exec { 'wget':
    command  => "wget ${url} -O ${tmpDest}",
    unless   => "test -f ${tmpDest} || test -f ${appName}",
  }

  exec { 'unzip':
    command  => "unzip ${tmpDest}",
    unless   => "test -f ${tmpDest} || test -f ${appName}",
    require  => Exec['wget'],
  }

  package { 'LiteIDE':
    ensure   => installed,
    provider => appdmg,
    source   => $appName,
    require  => Exec['unzip'],
  }
}
