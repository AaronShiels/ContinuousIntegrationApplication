param(
    [Int32]$runNumber,
    [String]$branch,
    [String]$targetBranch
)


If ($targetBranch) {
    If ($targetBranch -match "release\/(.*)") {
        Write-Output "$($matches[1])-pre$runNumber"
    } Else {
        Write-Output "pre$runNumber"
    }
} ElseIf ($branch -match "release\/(.*)") {
    Write-Output "$($matches[1])-b$runNumber"
} Else {
    Write-Output "d$runNumber"
}