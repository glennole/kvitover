#!/bin/sh

# Replace env vars in JavaScript files
echo "Replacing env vars in JS"
for file in /usr/share/nginx/html/js/*.*;
do
  echo "Processing $file ...";

  # Use the existing JS file as template
  cp $file $file.tmp
  envsubst '$VUE_APP_SUB_PATH' < $file.tmp > $file
  cp $file $file.tmp 
  envsubst '$VUE_APP_LOGIN_REDIRECT_URL' < $file.tmp > $file
  cp $file $file.tmp
  envsubst '$VUE_APP_LOGOUT_REDIRECT_URL' < $file.tmp > $file
  rm $file.tmp
done

cp /usr/share/nginx/html/index.html /usr/share/nginx/html/index.html.tmp
envsubst '$VUE_APP_SUB_PATH' < /usr/share/nginx/html/index.html.tmp > /usr/share/nginx/html/index.html
rm /usr/share/nginx/html/index.html.tmp

#echo "Replacing env vars in index.html"
#envsubst '$VUE_APP_BASE_URL' < /usr/share/nginx/html/abaxdashboard/index.html > /usr/share/nginx/html/abaxdashboard/index.html.tmp
#mv /usr/share/nginx/html/abaxdashboard/index.html.tmp /usr/share/nginx/html/abaxdashboard/index.html

echo "Starting Nginx"
nginx -g 'daemon off;'