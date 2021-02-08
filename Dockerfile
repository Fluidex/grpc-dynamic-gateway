FROM node:14-buster

WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install
#RUN git clone https://github.com/googleapis/googleapis.git /tmp/proto && mv /tmp/proto/google /
#RUN git clone --depth 1 --filter=blob:none --sparse https://github.com/grpc-ecosystem/grpc-gateway && cd grpc-gateway && git sparse-checkout init --cone && git sparse-checkout set third_party/googleapis/google && mv third_party/googleapis/google /
RUN mv third_party/googleapis/google /

EXPOSE 8080
VOLUME /api.proto

ENTRYPOINT ["node", "/usr/src/app/cli.js"]
CMD ["/api.proto"]
