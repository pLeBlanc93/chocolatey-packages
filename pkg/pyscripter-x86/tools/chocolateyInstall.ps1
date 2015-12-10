$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = 'pyscripter-x86'
  unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
  fileType      = 'exe'
  url           = 'http://sourceforge.net/projects/pyscripter/files/PyScripter-v2.6.0-Setup.exe/download'

  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0, 3010, 1641)

  softwareName  = 'PyScripter 2.6.0'
  checksum      = '46934B00AE4AB7D496110CC881335B085C166B4E'
  checksumType  = 'sha1'
}

Install-ChocolateyPackage @packageArgs
