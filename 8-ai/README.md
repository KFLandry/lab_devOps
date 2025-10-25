1 - Architecture du projet  : 

┌─────────────────────┐
│   Navigateur        │
│   localhost:3080    │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│  LibreChat (Docker) │
│                     │
│  Lit librechat.yaml │ ← Configure les endpoints ici
│  baseURL défini     │
└──────────┬──────────┘
           │
           │ Appel HTTP vers baseURL
           ▼
┌─────────────────────┐
│  Ollama             │
│  Port 11434         │
│  (hôte ou Docker)   │ <- Contient le modèle qwen2.5:0.5b ( Le plus légé ≃ 400Mo et le plus faible en quantité de paramètres) 
└─────────────────────┘

2 - Accés à l'interface
    - renomer les fichiers .env.done -> .env et librechat.done.yaml  -> librechat.yaml
    - Pour utiliser context7 MCP vous devez avoir un compte. En le selectionnant vous allez être rediriger pour une authentification.
        Il est possible de vous connecter automatiquement au lancement de LibreChat, pour cela vous devez :
            - Décommenter la section context7-mcp dans le fichier librechat.yaml  et rentrer votre clé d'api.      
            Pour vous en procurer une, suivez la [procedure](https://www.librechat.ai/docs/features/mcp#adding-mcp-servers-with-smithery) 

    - Assurer vous d'être dans le repertoire ./8-ai
    - lancer le script setup.sh 
    - via un navigateur lancer http://localhost:3080/

3 - Tips
    -  Le MCP filesystem a aussi été activé, pour plus de contexte ajouter des fichers  dans le rep LibreChat-main. Il est assez limité mais arrive tout de même à repondre au question basique sur les fichiers présent dans le rep

