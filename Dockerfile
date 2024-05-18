FROM ollama/ollama

RUN echo '#!/bin/sh' > /entrypoint.sh && \
    echo 'ollama serve' >> /entrypoint.sh && \
    echo 'ollama pull llama3' >> /entrypoint.sh && \
    echo 'ollama run phi3' >> /entrypoint.sh && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
