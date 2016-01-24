# Public: AppCode 2 by JetBrains
#
# Examples
#
# include appcode2
# 
# or
#
# class {'appcode2':
#   version => 2.0, 
# }
class appcode2 (
  $version = '3.3.2',
) {
  require java
  package { 'AppCode2':
    provider => 'appdmg',
    source   => "http://download.jetbrains.com/objc/AppCode-${version}-custom-jdk-bundled.dmg",
  }
}
