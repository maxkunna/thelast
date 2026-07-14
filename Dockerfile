FROM nginx:alpine

# Copy site files into nginx's default public folder
COPY . /usr/share/nginx/html

# Remove default nginx welcome files that aren't part of the site (optional cleanup)
RUN rm -f /usr/share/nginx/html/Dockerfile /usr/share/nginx/html/render.yaml

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
