# Architecture LibreChat + Ollama + MCP

## 📐 1 - Architecture du projet

```
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
│  (hôte ou Docker)   │ ← Modèle: qwen2.5:0.5b (~400Mo)
└─────────────────────┘
```

**Note :** Le modèle `qwen2.5:0.5b` est le plus léger et possède le moins de paramètres disponible.

---

## 🚀 2 - Accès à l'interface

### Préparation des fichiers

1. **Renommer les fichiers de configuration :**
   ```bash
   mv .env.done .env
   mv librechat.done.yaml librechat.yaml
   ```

### Configuration de Context7 MCP (optionnel)

- **Sans clé API :** En sélectionnant Context7 MCP, vous serez redirigé pour authentification
- **Connexion automatique (recommandé) :**
  1. Décommenter la section `context7-mcp` dans `librechat.yaml`
  2. Ajouter votre clé d'API
  3. Pour obtenir une clé : suivez la [procédure officielle](https://www.librechat.ai/docs/features/mcp#adding-mcp-servers-with-smithery)

### Lancement

```bash
# Assurez-vous d'être dans le répertoire
cd ./8-ai

# Lancer le script de setup
./setup.sh

# Accéder à l'interface via navigateur
# http://localhost:3080/
```

---

## 💡 3 - Tips

### MCP Filesystem

Le MCP filesystem est activé et permet d'ajouter du contexte depuis des fichiers :

- **Répertoire :** Placez vos fichiers dans `LibreChat-main/`
- **Capacités :** Limité mais capable de répondre aux questions basiques sur les fichiers présents
- **Usage :** Utile pour donner du contexte supplémentaire à l'IA

---

## 📝 Structure des fichiers

```
8-ai/
├── .env.done → .env
├── librechat.done.yaml → librechat.yaml
├── setup.sh
└── LibreChat-main/ (pour fichiers MCP filesystem)
```
