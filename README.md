# SinusBot Docker image
> This is a fork of the original [SinusBot Docker image](https://github.com/SinusBot/docker), with two fixes regarding youtube-dl (yt-dlp) & TeamSpeak client.

## Fork information
- **youtube-dl issue:**
The original image is based on Debian 10 (Buster), which means the latest available python version is 3.7. This version is no longer supported by the latest yt-dlp version, version 3.8 or higher is required. To fix this, I have switched to Debian 12 (Bookworm), which has python 3.11 available.

- **TeamSpeak client issue:**
The original image tries to build with the latest TeamSpeak 3 version. For whatever reasons, versions newer than 3.5.6 have some issues. To fix this, I have edited the Dockerfile to install version 3.5.6 specifically, which is known to work properly.

Refer to the [original repository](https://github.com/SinusBot/docker) for more information (usage, license, disclaimer, etc.).

## Tags
- `latest` is the default tag
- `discord` is a discord-only version of `latest` and does not contain the TeamSpeak client with additional dependencies

## Dockerhub repository
https://hub.docker.com/r/drwarpman/sinusbot-docker
