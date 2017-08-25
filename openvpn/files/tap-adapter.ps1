param([Parameter(Mandatory, ParameterSetName = 'new')][string]$New,
        [Parameter(Mandatory, ParameterSetName = 'remove')][string]$Remove)
        

$tapDesc = 'TAP-Windows Adapter V9*'
$tapDir = $env:ProgramFiles + "\TAP-Windows"
$tapInstallCmd = "$tapDir\bin\tapinstall.exe"
$tapInstallArgs = "install", "`"$tapDir\driver\OemVista.inf`"", "tap0901"     # Backtick quotes https://stackoverflow.com/q/17550663

if ($PSCmdlet.ParameterSetName -eq 'new') {
    if (Get-NetAdapter -InterfaceDescription $tapDesc | Where-Object Name -eq $New) {
        Write-Host "changed=no comment=`'TAP-Windows adapter $New exists`'"
        exit
    }
    if (-Not (Get-NetAdapter -InterfaceDescription $tapDesc | Where-Object Name -Like Eth*)) {
        $p = Start-Process $tapInstallCmd -ArgumentList $tapInstallArgs -NoNewWindow -Wait -PassThru
    }
    Get-NetAdapter -InterfaceDescription $tapDesc | Where-Object Name -Like Eth* `
        | Select-Object -First 1 | Rename-NetAdapter -NewName $New
    Write-Host "changed=yes comment=`'TAP-Windows adapter $New created`'"
}

if ($PSCmdlet.ParameterSetName -eq 'remove') {
    # No practical way to remove individual TAP adapter, so rename randomly to get it "out of the way"
    Get-NetAdapter -Name $Remove | Rename-NetAdapter -NewName "tmp$(Get-Random -Min 10 -Max 999)"
    Write-Host "changed=yes comment=`'TAP-Windows adapter $Remove removed`'"
}

