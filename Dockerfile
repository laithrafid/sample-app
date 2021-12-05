FROM gcr.io/qwiklabs-resources/sample-app-base:v1
ENV SOURCE=/go/src/github.com/viglesiasce/gke-info \
    GLIDE_VERSION=v0.12.3
COPY . $SOURCE
WORKDIR $SOURCE/cmd/gke-info
RUN go build -o gke-info
CMD ./gke-info
