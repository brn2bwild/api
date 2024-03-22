FROM richarvey/nginx-php-fpm:1.7.2

COPY . .

# Image config
ENV SKIP_COMPOSER 1
ENV WEBROOT /var/www/html/public
ENV PHP_ERRORS_STDERR 1
ENV RUN_SCRIPTS 1
ENV REAL_IP_HEADER 1

# Laravel config
ENV APP_ENV production
ENV APP_DEBUG false
ENV LOG_CHANNEL stderr
ENV APP_KEY base64:SyLFmyFq/uZ71TxVHue+toJCU/hTOxtwPyQNLbbjZKo=
ENV DB_CONNECTION pgsql
ENV DATABASE_URL postgres://laravel_postgresql_9l2m_user:laJd4NOMFHbFL58kRjlJGlXgtJ0vemky@dpg-cnuoi0v109ks7396rbt0-a/laravel_postgresql_9l2m
# ENV DB_DATABASE=laravel_postgresql_9l2m
# ENV DB_USERNAME=laravel_postgresql_9l2m_user
# ENV DB_PASSWORD=laJd4NOMFHbFL58kRjlJGlXgtJ0vemky

# Allow composer to run as root
ENV COMPOSER_ALLOW_SUPERUSER 1

CMD ["/start.sh"]