#source address 
$sourcePath= "C:\Users\krishna.i\OneDrive - Technovert\Desktop\CopyTest.txt"

#Dstination address 
$destinationPath = " C:\Users\suhas\Documents\Test-Folder"

#Creating a New Session and Storing it in the Variable $remoteSession and now you can use this variable to interact with the session 
$remoteSession = New-PSSession -ComputerName "4.213.5.31" -Credential (Get-Credential)

#Actual Statement to Copy the Files 
Copy-Item -Path $sourcePath -Destination $destinationPath -ToSession $remoteSession

# Remove the PowerShell session
Remove-PSSession $remoteSession