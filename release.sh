set -ex

cd apps/frontend
rm -rf priv
yarn build


cd ../..
MIX_ENV=prod mix phx.digest
MIX_ENV=prod mix release
