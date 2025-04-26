FROM node:23-alpine AS builder

WORKDIR /app
COPY package.json yarn.lock ./

RUN yarn install 
COPY . .

FROM gcr.io/distroless/nodejs20-debian12

WORKDIR /app
COPY --from=builder /app .

USER nonroot:nonroot

EXPOSE 3000

CMD ["bin/www"]

