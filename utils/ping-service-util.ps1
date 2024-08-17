# Define the path to the log file
$logPath = "D:\IDEA\Twitter_v2\devops-infra-scripts\log\transcript.txt"

# List of API endpoints to check
$apiEndpoints = @(
    "https://ms-eureka-server-2cvn.onrender.com",
    "https://ms-api-gateway-u3i4.onrender.com/actuator/health",
    "https://ms-user-service-ndm5.onrender.com/ms-user-service/actuator/health",
    "https://ms-chat-service-jc82.onrender.com/ms-chat-service/actuator/health",
    "https://ms-tweet-service-o6ph.onrender.com/ms-tweet-service/actuator/health"
)

# Start the transcript with the option to overwrite the existing log
Start-Transcript -Path $logPath -Append -Force

foreach ($api in $apiEndpoints) {
    try {
        # Invoke the REST API call
        $response = Invoke-RestMethod -Uri $api

#         $response = Invoke-RestMethod -Uri "https://ms-user-service-ndm5.onrender.com/ms-user-service/actuator/health"

        # Check if the response has content and print a user-friendly message
        if ($response) {
            $status = $response.status
#             $components = $response.components | ConvertTo-Json -Depth 2
            Write-Output "Checking API: $api"
            Write-Output "Health Check Status: $status"
#             Write-Output "Components Status: $components"
        } else {
#             Write-Output "No response received from the API: $api"
        }
    } catch {
        # Log the error if the API call fails
#         Write-Output "Error occurred while accessing $api: $_"
    }
}

# Stop the transcript
Stop-Transcript
