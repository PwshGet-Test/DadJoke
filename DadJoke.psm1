$Functions = @( Get-ChildItem -Path "$PSScriptRoot/Functions/*.ps1" -Recurse )
Foreach ($Import in $Functions)
{
    Try
    {
        . $Import.FullName
    }
    Catch
    {
        Write-Error -Message "Failed to import function $($Import.FullName): $_"
    }
}
Export-ModuleMember -Function $Functions.BaseName -Alias *