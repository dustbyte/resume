#!/bin/sh

set -e

pip install -r requirements.txt

cp -r assets public
python render.py content.yaml index.html.tpl > public/index.html
