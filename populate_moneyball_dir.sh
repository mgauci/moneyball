#!/bin/zsh

# Assume we're already in the moneyball directory

# Backend structure
mkdir -p backend/{src/{data_processing,models,prediction,optimization,api/routes},tests,data}
touch backend/{requirements.txt,Dockerfile,.dockerignore}
touch backend/src/__init__.py
touch backend/src/data_processing/{__init__.py,load_data.py}
touch backend/src/models/{__init__.py,team_strength_mcmc.py}
touch backend/src/prediction/{__init__.py,match_probability.py}
touch backend/src/optimization/{__init__.py,bet_optimizer.py}
touch backend/src/api/{__init__.py,main.py}
touch backend/src/api/routes/{__init__.py,predictions.py,optimizations.py}
touch backend/tests/{__init__.py,test_data_processing.py,test_models.py,test_prediction.py,test_optimization.py}
touch backend/data/{pl2022.csv,pl2023.csv}

# Frontend structure
mkdir -p frontend/{public,src/{components,services}}
touch frontend/{package.json,Dockerfile,.dockerignore}
touch frontend/public/index.html
touch frontend/src/{App.js,index.js}
touch frontend/src/components/{Predictions.js,Optimization.js}
touch frontend/src/services/api.js

# Nginx configuration
mkdir -p nginx
touch nginx/nginx.conf

# Scripts
mkdir -p scripts
touch scripts/run_weekly_update.py

# GitHub Actions
mkdir -p .github/workflows
touch .github/workflows/deploy.yml

# Root directory files (excluding README.md and .gitignore)
touch docker-compose.yml

echo "Moneyball project inner structure created successfully!"