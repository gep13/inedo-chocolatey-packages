﻿$packageName= 'jtalert'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

if ( [environment]::OSVersion.Version.Major -ge 10 )  {
    $url_win10 = 'https://dnl.hamapps.com/JTAlert/HamApps_JTAlert_AL_2.12.10_Setup.exe'
	$checksum_win10 = 'CD9E1C4079D4C64D6A057A948F60A288FF3771E336A29088CD36BD117BE17654'
	$url = $url_win10
	$checksum = $checksum_win10
  } else {
    $url = 'https://dnl.hamapps.com/JTAlert/HamApps_JTAlert_2.12.10_Setup.exe'
	$checksum = '5D5E55A96DADF22104B8484C59125C7665BA6585925C6B899BB0F7CED2B5C6E0'
}
  
$packageArgs = @{
  packageName   = $packageName
  url			= $url
  checksum      = $checksum
  checksumType  = 'sha256'
  
  silentArgs 	= '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /components=""'
}

Install-ChocolateyPackage @packageArgs