```mermaid
graph TD
    subgraph "Application Layer"
        W[Open WebUI]
    end
    
    subgraph "AI Layer"
        O[Ollama]
    end


    W --> O


    style W fill:#85C1E9,stroke:#2E86C1
    style O fill:#F1948A,stroke:#C0392B

```