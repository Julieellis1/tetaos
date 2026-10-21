FROM nginx:alpine
COPY index.html manifest.webmanifest sw.js ai-config.js og-image.png voice-call.mp3 voice-call-2.mp3 icon-180.png icon-192.png icon-512.png icon-maskable-512.png /usr/share/nginx/html/
COPY docker-entrypoint.d/50-teta-ai.sh /docker-entrypoint.d/50-teta-ai.sh
RUN chmod +x /docker-entrypoint.d/50-teta-ai.sh
