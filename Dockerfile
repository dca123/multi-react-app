FROM node:16.17-alpine as build

WORKDIR /app

COPY ./package.json pnpm-lock.yaml pnpm-workspace.yaml ./
COPY ./packages/Beef/package.json ./packages/Beef/package.json 
COPY ./packages/Pork/package.json ./packages/Pork/package.json 

RUN npm install -g pnpm
RUN pnpm install

COPY ./packages ./packages
RUN pnpm run -r build


FROM nginx:latest
COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/packages/Beef/dist /usr/share/nginx/beef
COPY --from=build /app/packages/Pork/dist /usr/share/nginx/pork
