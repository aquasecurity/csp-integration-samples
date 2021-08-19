<# 
    Script that allows for Aqua Enforcer to be deployed on Service Fabric Windows hosts via custom extension
    Author: Michael Jacobs
    Updated: 9/19/2021
#>

function Download-Executable ($count){
    try{
        <# Port must be changed to 8443 for an on-premise installation #>
        New-NetFirewallRule -DisplayName "Allow Outbound Port 443" -Direction Outbound -LocalPort 443 -Protocol RPC -Action Allow
        New-NetFirewallRule -DisplayName "Allow Inbound Port 443" -Direction Inbound -LocalPort 443 -Protocol TCP -Action Allow

        $User = "<AQUA_USER>"
        $PWord = ConvertTo-SecureString -String "<AQUA_PASSWORD>" -AsPlainText -Force
        $Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $PWord
        $source = 'https://download.aquasec.com/windows-enforcer/6.2.0/AquaAgentWindowsInstaller.6.2.21216.msi'
        $destination = 'AquaAgentWindowsInstaller.msi'
        Invoke-WebRequest -UseBasicParsing -Uri $source -OutFile $destination -Credential $Credential

        <# Port must be changed to 8443 for an on premise installation #>
        msiexec /I AquaAgentWindowsInstaller.msi AQUA_TOKEN=<TOKEN_FROM_UI> AQUA_SERVER=<GATEWAY_ADDRESS>:443 /qn

        Write-Host "Completed Successfully"
    }
    catch{
	$count = $count + 1
	if ( $count -lt 4 ){
		Download-Executable $count
	}
        Write-Host "Error Ocurred"
        Write-Host $_
    }   
}

Download-Executable 1