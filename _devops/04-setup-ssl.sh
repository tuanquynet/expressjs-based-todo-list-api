
CERT_DOMAIN=quy-todo-api-2.my-demo.fun
CERT_EMAIL=tuanquynet@gmail.com

# issue ssl with nginx mode
# ex: acme.sh --issue --nginx -d example.com -d www.example.com -d cp.example.com
USER_HOME=/root
mkdir -p $USER_HOME/nginx
NGINX_WEBROOT=/var/www/html

# use webroot acme.sh --issue -d example.com --webroot
# acme.sh --issue -d $CERT_DOMAIN --webroot $NGINX_WEBROOT
acme.sh --issue -d quy-todo-api3.my-demo.fun --webroot /var/www/html

acme.sh --install-cert -d quy-todo-api3.my-demo.fun \
  --key-file ~/certs/quy-todo-api3.my-demo.fun/key.pem \
  --fullchain-file ~/certs/quy-todo-api3.my-demo.fun/fullchain.pem \
  --reloadcmd "systemctl reload nginx.service"
