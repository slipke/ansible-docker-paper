# Use nginx as base image
FROM nginx

# Remove default config & add upstream
RUN rm /etc/nginx/conf.d/default.conf
RUN echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/upstream.conf

# Copy our custom nginx configurations
ADD html.conf /etc/nginx/conf.d/html.conf
ADD symfony.custom /etc/nginx/conf.d/symfony.custom