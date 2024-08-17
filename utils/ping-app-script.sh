function pingAPIs() {
  var urls = [
    "https://ms-eureka-server-2cvn.onrender.com",
    "https://ms-api-gateway-u3i4.onrender.com/actuator/health",
    "https://ms-user-service-ndm5.onrender.com/ms-user-service/actuator/health",
    "https://ms-chat-service-jc82.onrender.com/ms-chat-service/actuator/health",
    "https://ms-tweet-service-o6ph.onrender.com/ms-tweet-service/actuator/health",
    "https://ms-websocket-service-vy0m.onrender.com/ms-websocket-service/actuator/health",
    "https://ms-image-service-kfnp.onrender.com/ms-image-service/actuator/health",
    "https://ms-email-service-y4a3.onrender.com/actuator/health",
    "https://twitter-minio.onrender.com/photos-bucket"
  ];

  urls.forEach(function(url) {
    var options = {
      'method' : 'get',
      'muteHttpExceptions': true  // To prevent the script from throwing exceptions on HTTP errors
    };

    try {
      var response = UrlFetchApp.fetch(url, options);
      Logger.log('API Response for ' + url + ': ' + response.getContentText());
    } catch (e) {
      Logger.log('Error pinging API ' + url + ': ' + e.toString());
    }
  });
}
