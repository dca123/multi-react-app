FROM node:16.17-alpine as build

COPY ./ /app
WORKDIR /app
RUN npm install -g pnpm
RUN pnpm install
RUN pnpm run -r build


FROM nginx:latest
COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/packages/Beef/dist /usr/share/nginx/html
