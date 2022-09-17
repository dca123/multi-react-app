FROM node:16.17-alpine as build

WORKDIR /app

COPY ./packages ./packages
COPY ./package.json pnpm-lock.yaml pnpm-workspace.yaml ./
RUN npm install -g pnpm
RUN pnpm install
RUN pnpm run -r build


FROM nginx:latest
COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/packages/Beef/dist /usr/share/nginx/beef
COPY --from=build /app/packages/Pork/dist /usr/share/nginx/pork
