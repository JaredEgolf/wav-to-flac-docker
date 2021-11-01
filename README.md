# wav-to-flac-docker

Docker image that converts a directory of wav files using their metatags into flac files organized by artist and then album

## How to Use:
```docker run --name convert --mount type=bind,source="<path-to-input-directory.",target=/wave_input --mount type=bind,source="<path-to-output-directory>",target=/flac_output --rm -d <container-name>```
