# Minimal Docker image for pySynDNA using Alpine base
FROM alpine:latest

# install pySynDNA
RUN apk update && \
    apk add --no-cache bash build-base git py3-pip python3 python3-dev && \
    pip install --no-cache-dir --break-system-packages 'git+https://github.com/biocore/pysyndna.git@2026.02.2'
