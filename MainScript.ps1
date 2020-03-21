# Import modules
Import-Module .\Logic\DataService.psm1

# Check Database status
$connectionString = "Server = NULLPOINTER\SQLEXPRESS; Database = INVENTORY_Manager; Integrated Security = True;"
$connectionStatus = TestConnection($connectionString)

#Initialize collections
$ListOfItemTypes = @()
$ListOfItems = @()


if ($connectionStatus) {
    # Menu
    Write-Output "Select option:" 
    Write-Output "1. Add element"
    Write-Output "2. Remove element"
    Write-Output "3. Edit element"
    Write-Output "0. Exit"
    
    do {
        $option = Read-Host
    } while($option -ne 1 -and $option -ne 2 -and $option -ne 3 -and $option -ne 0)
    switch($option) {
        1 { Write-Output "1 Selected " }
        2 { Write-Output "2 Selected" }
        3 { Write-Output "3 selected "}
        0 { Write-Output "Exit!" }
    }
}
else {
    Write-Output "Database is offline!"
}