# The Edifice
An API Infrastructure Blueprint

## Considerations
* Standard framework for NodeJS API
* Loosely Coupled Observability/Monitoring Integration
* Loosely Coupled Messaging Service Integration
* Loosely Coupled Caching Integration
* Loosely Coupled Persistance Integration
* Secure Secret Storage/Access
* Continuous Integration & Deployment

## Getting Started

### Production
```bash
# Loads container for Postrgres & Adminer
docker-compose up --build -d database adminer

# Create Production Database
NODE_ENV=production npm run db:create

# Run All Migrations on Production Database
NODE_ENV=production npm run db:migrate

# Seed Production Database
NODE_ENV=production npm run db:seed:all

# Load container for Application
docker-compose up --build -d edifice
```

### Development
```bash
# Loads container for Postrgres & Adminer
docker-compose up --build -d database adminer

# Create Development Database
npm run db:create

# Run All Migrations on Development Database
npm run db:migrate

# Seed Development Database
npm run db:seed:all

# Load container for Application
docker-compose up --build -d edifice
```

---

### Hasura
```bash
# Loads container for Postgres & Hasura
# This will also perform migrations and import metadata
docker-compose up --build -d hasura

# Run Seeds for Tables
hasura seeds apply

# Hasura Console Running On:
# http://localhost:8081
```

---

### Okta
Okta has been integrated into the VueJS UI.  You can bring up the UI with the following commands:
```bash
cd ui
npm i
npm run serve

# Future plan to get running in docker

# VueJS App Running On:
# http://localhost:8080
```

**Notes about Okta:**

* Okta is mostly configuration under the admin space.

* Admin Space: [https://dev-42162808-admin.okta.com/](https://dev-42162808-admin.okta.com/)

* To have Okta-hosted sign-in with Identity Providers (Like Google SSO), a custom domain needed to be setup and configured (https://login.taxchum.com)

---

### Rails API
The Rails API can be ran through docker.  It will also run a dockerized Postgres database which the API is dependent on:
```bash
# Start Rails API (Also starts Postgres DB)
docker-compose up -d --build edifice-rails-api

# Retrieve List of Agents
curl http://localhost:3001/agents

# Retrieve List of Callbacks
curl http://localhost:3001/callbacks

# Create New Agent
curl -X POST -d "username=agentpost&email=agentpost%40company.com&first_name=Paul&last_name=Poster&phone_extension=x4321" http://localhost:3001/agents
```