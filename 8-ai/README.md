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
    - lancer le script setup.sh 
    - via un navigateur lancer http://localhost:3080/

3 - Tips
    -  Le MCP filesystem a aussi été activé, pour plus de contexte ajouter des fichers  dans le rep LibreChat-main. Il est assez limité mais arrive tout de même à repondre au question basique sur les fichiers présent dans le rep

