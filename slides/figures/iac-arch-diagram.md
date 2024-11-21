```mermaid
flowchart TD
    subgraph Azure["Azure Cloud"]
        subgraph AKS["AKS Cluster"]
            subgraph Storage["Azure Disks"]
                OPV["Ollama PVC 50Gi"]
                WPV["OpenWebUI PVC 1Gi"]
            end
            
            OL["Ollama StatefulSet"]
            WEB["OpenWebUI StatefulSet"]
            OS["Ollama Service"]
            WS["OpenWebUI Service"]
            
            %% Internal connections
            WEB --> OS
            OS --> OL
            OL --> OPV
            WEB --> WPV
        end
    end
    
    Internet["Internet"] --> |"HTTPS"| WS
    WS --> WEB

    %% Styling
    style Azure fill:#E6E6FA,stroke:#4B0082
    style AKS fill:#F0F8FF,stroke:#4682B4
    style Storage fill:#FFF2CC,stroke:#D6B656
    style WEB fill:#FFE6CC,stroke:#D79B00
    style OL fill:#DAE8FC,stroke:#6C8EBF
    style WS fill:#D5E8D4,stroke:#82B366
    style OS fill:#D5E8D4,stroke:#82B366
    style Internet fill:#F8CECC,stroke:#B85450
    style OPV fill:#FFE6CC,stroke:#D79B00
    style WPV fill:#FFE6CC,stroke:#D79B00

    %% Layout directions
    direction TB
```