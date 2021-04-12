function Get-DadJoke {
    Invoke-RestMethod -Method GET -UserAgent "PowerShell Library (https://github.com/PwshGet-Test/DadJoke)" -Header @{"Accept" = "text/plain"} -uri "https://icanhazdadjoke.com"
}