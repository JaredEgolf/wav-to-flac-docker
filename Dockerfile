# Pull Image
FROM jrottenberg/ffmpeg:4.1
# Install dependencies
RUN apt-get update && apt-get install -y jq
# Set Mount Points
VOLUME [ "/wave_input", "/flac_output" ]
# Copy files to container
COPY convert-to-flac /usr/local/bin/.
# Set Working Directory
WORKDIR /wave_input
# Auto Start Application
ENTRYPOINT [ "/bin/bash", "/usr/local/bin/convert-to-flac" ]
# ---or---
# Debug Start Application (manually start with: /usr/local/bin/convert-to-flac) with or without 'debug' flag
# ENTRYPOINT [ "/bin/bash" ]
