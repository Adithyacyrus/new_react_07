# Stage 1: Build the React app
FROM node:16-alpine AS build-stage

WORKDIR /bookapp-react-js

COPY package*.json ./

RUN npm install --save-dev @babel/code-frame

RUN npm install


COPY . .

RUN npm run build


# Stage 2: Serve the built app using Nginx
FROM nginx:1.22.1-alpine AS prod-stage

COPY --from=build-stage /bookapp-react-js/build /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
