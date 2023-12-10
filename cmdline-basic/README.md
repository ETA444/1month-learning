These are notes from the mini-course `Command Line Basic` on OneMonth.

This `Learning Log` is split into two parts. One is the notes of the course materials. The other is a list of some useful thing one can do in PowerShell for data analysis-related workflows which is not part of the course.
# Learning Log

## Command Line Basic: Course
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

