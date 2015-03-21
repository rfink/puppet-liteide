# Public: Installs Pentaho Kettle
#
# Usage:
#
#   include pentahokettle
class liteide {
  $version = '27.1'
  $url = "http://sourceforge.net/projects/liteide/files/X${version}/liteidex${version}.macosx.zip"

  package { 'LiteIDE':
    ensure   => installed,
    provider => compressed_app,
    source   => $url,
    #require  => Exec['liteide_wget'],
  }
}
