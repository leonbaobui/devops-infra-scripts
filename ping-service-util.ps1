# Define the path to the log file
$logPath = "D:\IDEA\Twitter_v2\devops-infra-scripts\log\transcript.txt"

# Start the transcript with the option to overwrite the existing log
Start-Transcript -Path $logPath -Append -Force

try {
    # Invoke the REST API call
    $response = Invoke-RestMethod -Uri "https://ms-user-service-ndm5.onrender.com/ms-user-service/actuator/health"

    # Check if the response has content and print a user-friendly message
    if ($response) {
        $status = $response.status
        $components = $response.components | ConvertTo-Json
        Write-Output "Health Check Status: $status"
        Write-Output "Components Status: $components"
    } else {
        Write-Output "No response received from the API."
    }
} catch {
    # Log the error if the API call fails
    Write-Output "Error occurred: $_"
}

# Stop the transcript
Stop-Transcript
