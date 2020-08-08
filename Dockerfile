FROM klakegg/hugo as build-stage
COPY . /src
RUN hugo


FROM nginx
COPY --from=build-stage /src/public/ /usr/share/nginx/html