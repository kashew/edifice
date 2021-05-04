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