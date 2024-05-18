FROM ollama/ollama

RUN echo '#!/bin/bash' > /start_ollama.sh && \
    echo 'echo "Starting Ollama server..."' >> /start_ollama.sh && \
    echo 'ollama serve &' >> /start_ollama.sh && \
    echo 'echo "Waiting for Ollama server to be active..."' >> /start_ollama.sh && \
    echo 'while [ "$(ollama list | grep '\''NAME'\'')" == "" ]; do' >> /start_ollama.sh && \
    echo '  sleep 1' >> /start_ollama.sh && \
    echo 'done' >> /start_ollama.sh && \
    echo 'echo "Ollama server is active."' >> /start_ollama.sh && \
    echo 'echo "Pulling phi3..."' >> /start_ollama.sh && \
    echo 'ollama pull phi3' >> /start_ollama.sh && \
    echo 'echo "Pulling llama3..."' >> /start_ollama.sh && \
    echo 'ollama pull llama3' >> /start_ollama.sh && \
    echo 'tail -f /dev/null' >> /start_ollama.sh && \
    chmod +x /start_ollama.sh

ENTRYPOINT ["/start_ollama.sh"]