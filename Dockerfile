FROM alpine:latest

RUN apk add --no-cache curl tar bash libc6-compat libstdc++ libgcc

ENV HUGO_VERSION=0.147.7

RUN curl -L https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz \
  -o hugo.tar.gz && \
  tar -zxvf hugo.tar.gz && \
  mv hugo /usr/local/bin/hugo && \
  chmod +x /usr/local/bin/hugo && \
  rm hugo.tar.gz

WORKDIR /src

EXPOSE 1313

# Defaults for development mode
ENV HUGO_MODE=server
ENV HUGO_BASEURL=http://localhost
ENV HUGO_CONFIG=config.toml

CMD ["sh", "-c", "\
  if [ \"$HUGO_MODE\" = 'server' ]; then \
    hugo server --bind 0.0.0.0 --config \"$HUGO_CONFIG\" --baseURL \"$HUGO_BASEURL\" --buildDrafts --watch; \
  else \
    hugo --config \"$HUGO_CONFIG\" --baseURL \"$HUGO_BASEURL\"; \
  fi"]