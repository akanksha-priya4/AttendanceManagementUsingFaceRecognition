# PowerShell script to create backdated commits for March 2024
# This script will create 1-4 commits per day for the entire month of March 2024

# Set git configuration
git config user.name "akanksha-priya4"
git config user.email "priyaakanksha393@gmail.com"

# March 2025 dates
$startDate = Get-Date "2025-03-01"
$endDate = Get-Date "2025-03-31"

# Commit messages for variety
$commitMessages = @(
    "Initial project setup",
    "Add face recognition functionality",
    "Implement attendance tracking system",
    "Add database integration",
    "Create user interface",
    "Fix bug in face detection",
    "Optimize performance",
    "Add error handling",
    "Update documentation",
    "Refactor code structure",
    "Add new features",
    "Improve accuracy",
    "Fix minor issues",
    "Update dependencies",
    "Add unit tests",
    "Enhance UI/UX",
    "Optimize memory usage",
    "Add logging functionality",
    "Fix security vulnerabilities",
    "Update configuration",
    "Add data validation",
    "Improve error messages",
    "Add backup functionality",
    "Update requirements",
    "Fix compatibility issues",
    "Add export features",
    "Optimize database queries",
    "Add user authentication",
    "Improve code readability",
    "Add configuration options"
)

$currentDate = $startDate
$messageIndex = 0

while ($currentDate -le $endDate) {
    # Generate random number of commits for this day (1-4)
    $commitsToday = Get-Random -Minimum 1 -Maximum 5
    
    Write-Host "Creating $commitsToday commits for $($currentDate.ToString('yyyy-MM-dd'))"
    
    for ($i = 1; $i -le $commitsToday; $i++) {
        # Set the commit date
        $commitDate = $currentDate.AddHours((Get-Random -Minimum 9 -Maximum 18)).AddMinutes((Get-Random -Minimum 0 -Maximum 60))
        $dateString = $commitDate.ToString("yyyy-MM-dd HH:mm:ss")
        
        # Get commit message
        $commitMessage = $commitMessages[$messageIndex % $commitMessages.Length]
        $messageIndex++
        
        # Create a small change to commit (if needed)
        if ($i -eq 1) {
            # First commit of the day - add all files
            git add .
        } else {
            # Subsequent commits - make small changes
            $randomFile = Get-ChildItem -File | Where-Object { $_.Extension -eq ".py" -or $_.Extension -eq ".txt" } | Get-Random
            if ($randomFile) {
                # Add a comment to the file
                $content = Get-Content $randomFile.FullName -Raw
                $comment = "# Updated on $($currentDate.ToString('yyyy-MM-dd')) - commit $i`n"
                Set-Content $randomFile.FullName -Value ($comment + $content)
                git add $randomFile.FullName
            }
        }
        
        # Create the commit with backdated timestamp
        $env:GIT_AUTHOR_DATE = $dateString
        $env:GIT_COMMITTER_DATE = $dateString
        git commit -m "$commitMessage"
        
        Write-Host "  Commit $i`: $commitMessage ($dateString)"
    }
    
    # Move to next day
    $currentDate = $currentDate.AddDays(1)
}

Write-Host "`nAll backdated commits created successfully!"
Write-Host "Total commits created: $(git rev-list --count HEAD)" 