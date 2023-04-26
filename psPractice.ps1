

    $EE_data.EE1
    
    $array = (200,343,4,23,42,3,42,99,100)
    
    $sortedArray = $array | sort
    
    write-host "The second smallest element is:" $sortedArray[1]
    
    write-host "The second largest element is:" $sortedArray[$sortedArray.Length -2]
    
    Write-host "The middle element is:" $sortedArray.GetValue($sortedArray.Length/2)
    
    $my_courses = @("course1 # Learning Task Automations # Vijay ", 
                    "course2 # Advanced Scripting & tool making Task #  Vijay", 
                    "course3 # AD Management using PowerShell /In progress # Vijay")

                    $my_courses = @("course1 # Learning Task Automations # Vijay            ", 
                    "course2 # Advanced Scripting & tool making #  Vijay          ", 
                    "course3 # AD Management using PowerShell /In progress # Vijay            ")
    
    #Select all elements which has substring "Task"
    $my_courses | Select-String "Task"
    
    #Sorting array
    $my_courses | Sort-Object 
    
    $my_courses | Sort-Object -Descending
    
    #Writing elements into a file
    $my_courses | Where-Object {$_ -match "task" } >> 'file.txt'
    
    #Accessing each element of array and transform/manipulate
    #Method1
    foreach ( $element in $my_courses ){
        
        #echo $element
        
        # Triming to remove white space from starting and ending
        $tmp1 = $element.trim()
        
        $tmp  = $tmp1 -split '#'
        $course_number  =  $tmp[0]
        $course_title  =  $tmp[1]
        $course_author  =  $tmp[2]
        $course_autho
        Write-Host "Hi. you are invited to join me in "    $course_title.ToUpper()   " whose author is "  $course_author
    
    }
    
    #Method2
    $my_courses | ForEach-Object {
        $element = $_
        $tmp1 = $element.trim()
        
        $tmp  = $tmp1 -split '#'
        $course_number  =  $tmp[0]
        $course_title  =  $tmp[1]
        $course_author  =  $tmp[2]
        $course_autho
        Write-Host "Hi. you are invited to join me in "    $course_title.ToUpper()   " whose author is "  $course_author
    
    }