# run as admin
$currentWi = [Security.Principal.WindowsIdentity]::GetCurrent()
$currentWp = [Security.Principal.WindowsPrincipal]$currentWi
if( -not $currentWp.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
    $boundPara = ($MyInvocation.BoundParameters.Keys | foreach{'-{0} {1}' -f  $_ ,$MyInvocation.BoundParameters[$_]} ) -join ' '
    $currentFile = $MyInvocation.MyCommand.Definition
    $fullPara = $boundPara + ' ' + $args -join ' '
    Start-Process "$psHome\powershell.exe"   -ArgumentList "$currentFile $fullPara"   -verb runas
    return
}

# delete reg
echo "=========================================================================================="
echo "����ɾ��ע�����Ϣ ......"
echo "delete reg ......"
echo ""
echo ""
echo "=========================================================================================="
echo "ɾ������playwithmpvЭ��ע�����y����"
echo "delete all playwithmpv reg, press y"
echo ""

Remove-ItemProperty HKLM:\SOFTWARE\Policies\Google\Chrome -Name ExternalProtocolDialogShowAlwaysOpenCheckbox -Force -Verbose
Remove-ItemProperty HKLM:\SOFTWARE\Policies\Microsoft\Edge -Name ExternalProtocolDialogShowAlwaysOpenCheckbox -Force -Verbose
Remove-Item Registry::HKCR\PlayWithMPV -Force -Verbose

echo ""
echo ""
echo "=========================================================================================="
echo "ɾ���ɹ�"
echo "uninstall success"
echo "=========================================================================================="

pause
