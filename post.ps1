# flare-vm
cd $([Environment]::GetFolderPath("Desktop"));
(New-Object net.webclient).DownloadFile('https://raw.githubusercontent.com/mandiant/flare-vm/main/install.ps1',"$([Environment]::GetFolderPath("Desktop"))\install.ps1");
Unblock-File .\install.ps1;
Set-ExecutionPolicy Unrestricted -Force;
.\install.ps1 -password toor -noWait -noChecks -noGui;

# my dotfiles
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/4n86rakam1/dotfiles/master/win10/bootstrap.ps1'));
