# 7-puppet_install_nginx_web_server.pp

# Install Nginx package
package { 'nginx':
  ensure => 'installed',
}

# Ensure Nginx service is running and enabled
service { 'nginx':
  ensure => 'running',
  enable => true,
}

# Configure Nginx server block for the default server
file { '/etc/nginx/sites-available/default':
  content => "
    server {
        listen 80 default_server;
        listen [::]:80 default_server;

        server_name _;

        location / {
            return 200 'Hello World!';
        }

        location /redirect_me {
            return 301 'https://www.youtube.com/watch?v=QH2-TGUlwu4';
        }

        error_page 404 /custom_404.html;
        location = /custom_404.html {
            return 404 'Ceci n'est pas une page';
        }
    }
  ",
  notify => Service['nginx'],
}

# Ensure the default sites-enabled symlink points to the default configuration
file { '/etc/nginx/sites-enabled/default':
  ensure => 'link',
  target => '/etc/nginx/sites-available/default',
}
