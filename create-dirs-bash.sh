#!/bin/bash

# Create ECRL directory structure with meaningful READMEs

# Declare associative array for directory titles
declare -A dir_titles
dir_titles["architecture"]="# ECRL Architecture: The Doughnut Model\n\n**The framework that prevents civilizational collapse through minimal on-chain core + rich off-chain domains**"
dir_titles["layer-1-niche-principles"]="# Layer 1: Niche Principles\n\n**Domain-specific infrastructure for naming and attestation - enabling the invisible army to specialize**"
dir_titles["layer-2-niche-standards"]="# Layer 2: Niche Standards\n\n**Cross-domain standards and policies that compose across industries - turning expertise into reusable infrastructure**"
dir_titles["layer-3-recipe-builders"]="# Layer 3: Recipe Builders\n\n**Policy composition tools for customized compliant solutions - making critical infrastructure profitable**"
dir_titles["layer-4-ready-meals-meal-kits"]="# Layer 4: Ready Meals & Meal Kits\n\n**Final attested components and flexible assemblies - verifiable trust that scales**"
dir_titles["working-groups"]="# Working Groups\n\n**Active standardization efforts to prevent civilizational collapse - join the infrastructure rescue mission**"

# Subdirectory titles
declare -A subdir_titles
subdir_titles["architecture/diagrams"]="# Architecture Diagrams\n\n**Visual representations of how ECRL prevents infrastructure collapse**"
subdir_titles["layer-1-niche-principles/software-principles"]="# Software Supply Chain Principles\n\n**Domain-specific infrastructure for software component attestation**"
subdir_titles["layer-1-niche-principles/food-safety-principles"]="# Food Safety Supply Chain Principles\n\n**Domain-specific infrastructure for food component attestation**"
subdir_titles["layer-1-niche-principles/medical-device-principles"]="# Medical Device Supply Chain Principles\n\n**Domain-specific infrastructure for medical component attestation**"
subdir_titles["layer-1-niche-principles/construction-principles"]="# Construction Materials Supply Chain Principles\n\n**Domain-specific infrastructure for construction component attestation**"
subdir_titles["layer-2-niche-standards/allergen-tracking-standard"]="# Allergen Tracking Standard\n\n**Cross-domain standard for allergen management: food → pharma → manufacturing**"
subdir_titles["layer-2-niche-standards/security-audit-standard"]="# Security Audit Standard\n\n**Cross-domain standard for security verification: software → medical → financial**"
subdir_titles["layer-2-niche-standards/accessibility-standard"]="# Accessibility Standard\n\n**Cross-domain standard for accessibility: web → mobile → physical → medical**"
subdir_titles["layer-2-niche-standards/materials-certification-standard"]="# Materials Certification Standard\n\n**Cross-domain standard for materials verification: construction → automotive → aerospace**"
subdir_titles["layer-3-recipe-builders/defi-protocol-builder"]="# DeFi Protocol Recipe Builder\n\n**Policy composition for decentralized finance systems**"
subdir_titles["layer-3-recipe-builders/joes-pizzeria-builder"]="# Joe's Pizzeria Recipe Builder\n\n**Policy composition for food service operations**"
subdir_titles["layer-3-recipe-builders/medical-device-builder"]="# Medical Device Recipe Builder\n\n**Policy composition for medical device systems**"
subdir_titles["layer-3-recipe-builders/smart-building-builder"]="# Smart Building Recipe Builder\n\n**Cross-domain policy composition for integrated building systems**"
subdir_titles["layer-4-ready-meals-meal-kits/ready-meals"]="# Ready Meals\n\n**Pre-attested components with verifiable compliance - one thing, multiple certifications**"
subdir_titles["layer-4-ready-meals-meal-kits/meal-kits"]="# Meal Kits\n\n**Customizable component assemblies within policy constraints - flexibility without compliance risk**"
subdir_titles["layer-4-ready-meals-meal-kits/economic-models"]="# Economic Models\n\n**How 'more policies = bigger addressable market' transforms critical infrastructure maintenance**"
subdir_titles["working-groups/core-standards-wg"]="# Core Standards Working Group\n\n**Defining minimal on-chain primitives (ENS + IPFS linking)**"
subdir_titles["working-groups/ethereum-component-wg"]="# Ethereum Component Working Group\n\n**First niche implementation for software supply chains**"
subdir_titles["working-groups/cross-domain-composition-wg"]="# Cross-Domain Composition Working Group\n\n**Standards that work across industries - expertise sharing at scale**"
subdir_titles["working-groups/governance-framework-wg"]="# Governance Framework Working Group\n\n**Sustainable governance for preventing civilizational infrastructure collapse**"

# Main directories
directories=(
    "architecture"
    "layer-1-niche-principles"
    "layer-2-niche-standards" 
    "layer-3-recipe-builders"
    "layer-4-ready-meals-meal-kits"
    "working-groups"
)

# Subdirectories  
subdirs=(
    "architecture/diagrams"
    "layer-1-niche-principles/software-principles"
    "layer-1-niche-principles/food-safety-principles"
    "layer-1-niche-principles/medical-device-principles"
    "layer-1-niche-principles/construction-principles"
    "layer-2-niche-standards/allergen-tracking-standard"
    "layer-2-niche-standards/security-audit-standard"
    "layer-2-niche-standards/accessibility-standard"
    "layer-2-niche-standards/materials-certification-standard"
    "layer-3-recipe-builders/defi-protocol-builder"
    "layer-3-recipe-builders/joes-pizzeria-builder"
    "layer-3-recipe-builders/medical-device-builder"
    "layer-3-recipe-builders/smart-building-builder"
    "layer-4-ready-meals-meal-kits/ready-meals"
    "layer-4-ready-meals-meal-kits/meal-kits"
    "layer-4-ready-meals-meal-kits/economic-models"
    "working-groups/core-standards-wg"
    "working-groups/ethereum-component-wg"
    "working-groups/cross-domain-composition-wg"
    "working-groups/governance-framework-wg"
)

echo "Creating ECRL directory structure with meaningful READMEs..."
echo ""

# Create main directories with meaningful READMEs
for dir in "${directories[@]}"; do
    mkdir -p "$dir"
    echo -e "${dir_titles[$dir]}" > "$dir/README.md"
    echo "✅ Created: $dir/README.md"
done

echo ""

# Create subdirectories with meaningful READMEs
for subdir in "${subdirs[@]}"; do
    mkdir -p "$subdir"
    if [[ -n "${subdir_titles[$subdir]}" ]]; then
        echo -e "${subdir_titles[$subdir]}" > "$subdir/README.md"
        echo "✅ Created: $subdir/README.md"
    else
        echo "📁 Created: $subdir/"
    fi
done

echo ""
echo "🎯 ECRL directory structure created successfully!"
echo ""
echo "📂 Directory Summary:"
echo "   • 6 main layers with detailed READMEs"
echo "   • 20 specialized subdirectories" 
echo "   • Framework for preventing civilizational collapse"
echo ""
echo "🚀 Next steps:"
echo "1. Run: chmod +x create_ecrl_structure.sh"
echo "2. Run: ./create_ecrl_structure.sh"
echo "3. Each README.md now has a meaningful title and description"
echo "4. Start with /architecture/README.md to understand the core framework"
echo "5. Join /working-groups/ to help save civilization's infrastructure"
echo ""
echo "💡 The invisible army deserves visible, sustainable economic incentives!"