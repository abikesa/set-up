#!/bin/bash

# name: setup.sh
# usage: bash setup.sh

echo "🐍 Creating virtual environment..."
python3.11 -m venv myenv

echo "✨ Activating virtual environment..."
source myenv/bin/activate
git clone https://github.com/abikesa/dummy

echo "📦 Installing requirements..."
pip install --upgrade pip
pip install -r kitabo/ensi/requirements.txt

echo "📚 Installing Jupyter Book + ghp-import..."
pip install jupyter-book ghp-import

echo "✅ Environment ready. To activate later: source myenv/bin/activate"
