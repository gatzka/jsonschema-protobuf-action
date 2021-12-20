FROM alpine:3.15.0
RUN apk add go protoc protobuf-dev git npm
RUN GO111MODULE=on GOBIN=/usr/local/bin/ go install github.com/chrusty/protoc-gen-jsonschema/cmd/protoc-gen-jsonschema@1.3.4

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
