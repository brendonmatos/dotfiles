find . -name 'node_modules' -type d -prune -exec rm -rf '{}' +
find . -name '.turbo' -type d -prune -exec rm -rf '{}' +
find . -name '.nuxt' -type d -prune -exec rm -rf '{}' +
find . -name '.cache' -type d -prune -exec rm -rf '{}' +
find . -name '.output' -type d -prune -exec rm -rf '{}' +
# find . -name 'dist' -type d -prune -exec rm -rf '{}' +
# delete all .lock files
find . -name 'bun.lockb' -type f -delete
find . -name 'yarn.lock' -type f -delete
find . -name 'package-lock.json' -type f -delete
yarn cache clean
