#use an official Nginx image at the base
FROM nginx:alpine 

#set the working directory in the container
WORKDIR /usr/share/nginx/html

# Remove any existing file in the default Nginx folder (optional)
RUN rm -rf /usr/share/nginx/html/*

#Copy the contents of the game directory into nginx's default serving directory
COPY ./project/game /usr/share/nginx/html/

#Expose port
EXPOSE 5000



