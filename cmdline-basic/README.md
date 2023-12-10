These are notes from the mini-course `Command Line Basic` on OneMonth.

This `Learning Log` is split into two parts. One is the notes of the course materials. The other is a list of some useful thing one can do in PowerShell for data analysis-related workflows which is not part of the course.
# Learning Log

## Command Line Basic: OneMonth Course
- **Official Curriculum on OneMonth**
	1. What is the Command Line
	2. Find your Command Line
	3. Customize Command Line
	4. `start`, `ls` and `cd`
	5. Making Folders and Files with the Command Line
	6. Hidden Files and How to Go Deeper with Learning


### `start`, `ls` and `cd`

- **Navigating Directories**:
  - List files and directories in the current folder:
```powershell
ls
```
  - Change to a specific directory:
```powershell
cd C:\Path\To\Directory
```
  - Print current path:
```powershell
pwd
```

- **Opening Files and Folders**:
  - Open a file with its default application:
```powershell
start filename.txt
```
  - Open a folder in Windows File Explorer:
```powershell
start .
```

- **Listing and Filtering Files**:
  - List only files (not directories) in the current folder:
```powershell
ls -File
```
  - List files and directories in a specific directory:
```powershell
ls C:\Path\To\Directory
```

- **Changing Directories**:
  - Change to the user's home directory:
```powershell
cd ~
```
  - Change to the parent directory:
```powershell
cd ..
```

- **Navigating Drives**:
  - List all available drives:
```powershell
Get-PSDrive
```
  - Change to a specific drive:
```powershell
cd D:
```

- **Tab Completion**:
  - Use tab completion to quickly navigate and autocomplete paths by pressing the Tab key.

- **Recursive Listing**:
  - List all files and subdirectories recursively:
```powershell
ls -Recurse
```

### Making Folders and Files with the Command Line

- **Creating Directories**:
  - Create a new directory:
```powershell
mkdir NewDirectory
```
  - Create a directory with subdirectories (if they don't exist):
```powershell
mkdir -Force C:\Path\To\New\Directory
```

- **Creating Files**:
  - Create an empty text file:
```powershell
New-Item filename.txt -ItemType File
```
  - Create a new file with content:
```powershell
"This is the content" | Out-File newfile.txt
```

- **Copying and Moving Files**:
  - Copy a file to another location:
```powershell
Copy-Item sourcefile.txt destination
```
  - Move a file to another location:
```powershell
Move-Item sourcefile.txt destination
```

- **Renaming Files**:
  - Rename a file:
```powershell
Rename-Item currentfile.txt newfile.txt
```

- **Deleting Files and Directories**:
  - Delete a file:
```powershell
Remove-Item filename.txt
    ```
  - Delete a directory and its contents:
```powershell
Remove-Item -Recurse directoryname
```

- **File Permissions**:
  - View file permissions:
```powershell
Get-Acl filename.txt
```
  - Change file permissions:
```powershell
Set-Acl filename.txt -AclObject $acl
```

- **Reading (text) Files:**
```powershell
more yourfile.txt
```

### Hidden Files and How to Go Deeper with Learning

- **Viewing Hidden Files**:
  - List hidden files and directories:
```powershell
ls -Hidden
```
  - Show hidden files in Windows File Explorer:
    - Press "Alt + H" in the File Explorer window.

- **Changing File Attributes**:
  - Set a file as hidden:
```powershell
Set-Item filename.txt -Hidden $true
```
  - Remove the hidden attribute from a file:
```powershell
Set-Item filename.txt -Hidden $false
```

- **Learning Resources**:
  - Microsoft's official PowerShell [documentation](https://docs.microsoft.com/en-us/powershell/)

## PowerShell & Data Science
Here I explore 6 areas:
- **Data Cleaning**
- **Data Exploration**
- **Data Manipulation**
- **Data Visualization**
- **Data Export**
- **File Management**


### Data Cleaning

- Remove rows with missing values (NaN) from a CSV file:
```powershell
Import-Csv data.csv | Where-Object { $_.Column1 -ne "NaN" -and $_.Column2 -ne "NaN" } | Export-Csv cleaned_data.csv -NoTypeInformation
```

- Remove rows with specific values from a CSV file (e.g., remove rows where "Status" is "Inactive"):
```powershell
Import-Csv data.csv | Where-Object { $_.Status -ne "Inactive" } | Export-Csv cleaned_data.csv -NoTypeInformation
```

- Convert date strings to DateTime objects:
```powershell
Import-Csv data.csv | ForEach-Object { $_.Date = [DateTime]::ParseExact($_.Date, "yyyy-MM-dd", $null) } | Export-Csv cleaned_data.csv -NoTypeInformation
```

- Remove leading and trailing spaces from all string columns:
```powershell
Import-Csv data.csv | ForEach-Object {
  $_.Column1 = $_.Column1.Trim()
  $_.Column2 = $_.Column2.Trim()
} | Export-Csv cleaned_data.csv -NoTypeInformation
```

- Convert text-based categorical values to numerical labels (e.g., "Low" -> 0, "Medium" -> 1, "High" -> 2):
```powershell
Import-Csv data.csv | ForEach-Object {
  switch ($_.Category) {
	  "Low" { $_.Category = 0 }
	  "Medium" { $_.Category = 1 }
	  "High" { $_.Category = 2 }
  }
} | Export-Csv cleaned_data.csv -NoTypeInformation
```

- Standardize numeric data by subtracting the mean and dividing by the standard deviation:
```powershell
$mean = (Import-Csv data.csv | Measure-Object -Property NumericColumn -Average).Average
$stdDev = (Import-Csv data.csv | Measure-Object -Property NumericColumn -StandardDeviation).StandardDeviation

Import-Csv data.csv | ForEach-Object {
  $_.NumericColumn = ($_.'NumericColumn' - $mean) / $stdDev
} | Export-Csv standardized_data.csv -NoTypeInformation
```

### Data Exploration

- List unique values in a column:
```powershell
Import-Csv data.csv | Select-Object -ExpandProperty ColumnName -Unique
```

- Calculate the sum of a numeric column:
```powershell
$sum = (Import-Csv data.csv | Measure-Object -Property NumericColumn -Sum).Sum
```

- Find the minimum and maximum values in a numeric column:
```powershell
$min = (Import-Csv data.csv | Measure-Object -Property NumericColumn -Minimum).Minimum
$max = (Import-Csv data.csv | Measure-Object -Property NumericColumn -Maximum).Maximum
```

- Count occurrences of specific values in a column (e.g., count how many times "A" appears in the "Category" column):
```powershell
$count = (Import-Csv data.csv | Where-Object { $_.Category -eq "A" }).Count
```

- Filter and display rows based on multiple conditions:
```powershell
Import-Csv data.csv | Where-Object { $_.Category -eq "A" -and $_.Value -gt 100 }
```

- Group data by a specific column and calculate statistics for each group:
```powershell
Import-Csv data.csv | Group-Object -Property Category | ForEach-Object {
  [PSCustomObject]@{
	  Category = $_.Name
	  Count = $_.Count
	  AverageValue = ($_.Group | Measure-Object -Property Value -Average).Average
  }
}
```

- Join data from multiple CSV files based on a common key:
```powershell
$data1 = Import-Csv data1.csv
$data2 = Import-Csv data2.csv
$joinedData = $data1 | Join-Object -Inner $data2 -OuterKey ID -InnerKey ID -Type Left
```


### Data Manipulation

- Create a new CSV file by combining columns from multiple CSV files:
```powershell
$data1 = Import-Csv data1.csv
$data2 = Import-Csv data2.csv
$combinedData = $data1 | ForEach-Object {
  $matchingRow = $data2 | Where-Object { $_.ID -eq $_.ID }
  $_ | Select-Object *, @{Name="NewColumn"; Expression={$matchingRow.NewColumn}}
}
$combinedData | Export-Csv combined_data.csv -NoTypeInformation
```

- Filter and extract rows that meet specific criteria (e.g., rows with a certain value in one column and a date within a range in another):
```powershell
Import-Csv data.csv | Where-Object { $_.Category -eq "A" -and $_.Date -ge "2023-01-01" -and $_.Date -lt "2023-02-01" }
```

- Pivot data from long to wide format:
```powershell
Import-Csv data.csv | Group-Object -Property ID | ForEach-Object {
  [PSCustomObject]@{
	  ID = $_.Name
	  Value1 = ($_.Group | Where-Object { $_.Category -eq "A" }).Value
	  Value2 = ($_.Group | Where-Object { $_.Category -eq "B" }).Value
  }
}
```

- Split a column containing multiple values into multiple columns (e.g., split "Name (Age)" into "Name" and "Age" columns):
```powershell
Import-Csv data.csv | ForEach-Object {
  $name, $age = $_.ColumnName -split ' \('
  $_ | Add-Member -MemberType NoteProperty -Name Name -Value $name.Trim()
  $_ | Add-Member -MemberType NoteProperty -Name Age -Value $age.TrimEnd(')')
} | Export-Csv split_data.csv -NoTypeInformation
```

- Create a rolling average or moving average for a numeric column:
```powershell
$windowSize = 3
Import-Csv data.csv | ForEach-Object {
  $currentRowIndex = [array]::IndexOf($data, $_)
  $startIndex = [Math]::Max($currentRowIndex - $windowSize + 1, 0)
  $average = ($data[$startIndex..$currentRowIndex] | Measure-Object -Property NumericColumn -Average).Average
  $_.RollingAverage = $average
} | Export-Csv rolling_average_data.csv -NoTypeInformation
```

### Data Visualization

- Create a bar chart to visualize category counts:
```powershell
$data | Group-Object -Property Category | ForEach-Object {
  [PSCustomObject]@{
	  Category = $_.Name
	  Count = $_.Count
  }
} | Out-GridView
```

- Generate a histogram to visualize the distribution of numeric data:
```powershell
$data | Measure-Object -Property NumericColumn -Minimum -Maximum -Average | Out-GridView
```

- Plot a scatter plot of two numeric columns:
```powershell
$data | Select-Object -Property Column1, Column2 | Out-GridView
```

- Create a line chart to visualize time series data:
```powershell
$data | Sort-Object Date | Select-Object -Property Date, Value | Out-GridView
```

- Display a pie chart to show the distribution of categories:
```powershell
$data | Group-Object -Property Category | ForEach-Object {
  [PSCustomObject]@{
	  Category = $_.Name
	  Count = $_.Count
  }
} | Out-GridView -PassThru | Show-Chart -Type Pie -ValueProperty Count -CategoryProperty Category -Title "Category Distribution"
```

- Generate a box plot to visualize the spread of data:
```powershell
$data | Select-Object -Property Category, NumericColumn | Out-GridView -PassThru | Show-Chart -Type BoxPlot -CategoryProperty Category -ValueProperty NumericColumn -Title "Numeric Data Spread by Category"
```

### Data Export

- Export data to an Excel file:
```powershell
$data | Export-Excel -Path data.xlsx -AutoSize -WorksheetName "DataSheet"
```

- Save data as a CSV file with a specific delimiter (e.g., tab-delimited):
```powershell
$data | Export-Csv -Path data.tsv -Delimiter "`t" -NoTypeInformation
```

- Export data to JSON format:
```powershell
$data | ConvertTo-Json | Set-Content data.json
```

- Save data to a SQLite database:
```powershell
$data | Export-Sqlite -DatabasePath mydb.sqlite -TableName MyTable
```

- Export data to a MySQL database using the MySQL PowerShell module:
```powershell
$data | Write-MySqlData -TableName MyTable -ServerName ServerName -DatabaseName DbName -Credential $credential
```

### File Management

- Move files from one directory to another:
```powershell
Move-Item -Path "source_directory\*" -Destination "destination_directory" -Force
```

- Delete files older than a specified date in a directory:
```powershell
Get-ChildItem -Path "directory_path" | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-30) } | Remove-Item -Force
```

- Create a new directory:
```powershell
New-Item -ItemType Directory -Path "new_directory"
```

- Rename files based on a pattern (e.g., add a prefix):
```powershell
Get-ChildItem -Path "directory_path" | ForEach-Object { Rename-Item -Path $_.FullName -NewName ("Prefix_" + $_.Name) }
```

- List all files with a specific extension in a directory:
```powershell
Get-ChildItem -Path "directory_path" -Filter "*.csv"
```

- Zip files in a directory into a single archive:
```powershell
Compress-Archive -Path "directory_path\*" -DestinationPath "archive.zip"
```

- Unzip files from an archive:
```powershell
Expand-Archive -Path "archive.zip" -DestinationPath "destination_directory"
```

