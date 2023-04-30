
$output_file = "employee_eligibility_status.csv"
Write-Output "Name,EmployeeID,Eligibility Status" | Out-File $output_file

Get-ChildItem -Path .\testfolder -Filter "*.emp" | ForEach-Object{
    $emp = $_.BaseName

    #Breaking/Splitting the string by delimiter ("_")
    $temp = $emp -split "_"

    #Initializing the variables on the basis of position
    $name = $temp[0]
    $empID = $temp[1]
    $date = $temp[2]

    #Convering date from strin to datetime object(Typecasting)
    $DOJ=[datetime]::ParseExact($date,"yyyy-mm-dd",$null)

    #Comparing if date of joining is older than 5 years ago
    if($DOJ -le (Get-Date).AddYears(-5)){
        Write-Output "$name,$empID,Yes" | Out-File $output_file -Append
    }else {
        Write-Output "$name,$empID,No"  | Out-file $output_file -Append
    }
       
    
}

