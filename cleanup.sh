#!/bin/bash

# This script removes unused dependencies identified by depcheck.

echo "🧹  Removing unused dependencies..."

# List of unused dependencies to remove
unused_dependencies=(
  "@types/three"
  "d3-force"
  "dotenv"
  "three"
)

# Uninstall each package
for package in "${unused_dependencies[@]}"; do
  echo "  - Uninstalling $package"
  npm uninstall "$package"
done

echo "✅  Unused dependencies have been removed!"