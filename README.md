Running nginx:alpine and attaching my own conf file to support SSL, 
return the right values to the query, and protect against "h4ck3r"-man.

The SSL cert and key were generated with openssl

Docker build with 'docker build -t blue-apron-webapp .'

Docker run with 'docker run -d -p 80:80 -p 443:443 blue-apron-webapp' to manage http/https calls on ports 80/443
test w/ `http://localhost` in a browser and `curl -k --user-agent "h4ck3r" https://localhost` in the terminal


The script unique_ip.sh is used to parse access logs to show lists of unique ids in 4 different ways of being sorted/counted.
The command used to parse the given logs was

`sh unique_ip.sh https://raw.githubusercontent.com/linuxacademy/content-elastic-log-samples/master/access.log`
