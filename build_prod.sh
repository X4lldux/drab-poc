#!/usr/bin/env bash
# cd ../drab
# git pull
# cd ../drab-poc
rm mix.lock
git pull
mix deps.get
npm install && node_modules/brunch/bin/brunch build --production
MIX_ENV=prod mix clean
MIX_ENV=prod mix compile
MIX_ENV=prod mix phx.digest
