FROM nvidia/cuda:11.4.0-devel AS builder

WORKDIR /build

COPY . /build/

RUN make

FROM nvidia/cuda:11.4.0-runtime

COPY --from=builder /build/matrix-cuda /usr/local/bin/matrix-cuda

CMD ["matrix-cuda"]
