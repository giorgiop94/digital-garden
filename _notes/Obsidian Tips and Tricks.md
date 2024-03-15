---
title: Obsidian Tips and Tricks 
---
### Internal Link to Folder or file outside of obsidian
When wanting to link to a file or folder outside of obsidian - 

Working Example:
- Taken notes in [file in this folder](<file:///C:\Users\giorgio\Box\GEDB Master Folder\Projects\P - ESG Holdings\ESG - Prospectus Checks>)

### Search tips
You can filter out all of our daily notes from a search by adding the notation:
-tag:journaling

### Add box around text

> [!NOTE] box example
> sample text



### add front-matter to all notes for publishing (in powershell)
in Linux type pwsh in terminal to access powershell

```
$files = Get-ChildItem -path /home/giorgio/github/my-digital-garden/_notes -filter *.md -recurse -force
foreach ($file in $files)
{
   	$content = Get-Content $file.FullName
	$newString = "---
	`rtitle: " + $file.BaseName +"`r 
	---"
	Write-Output "================================ `r `n inserting" $newString " in" $file.FullName
	Set-Content $file.FullName -value $newString, $content
}

```
