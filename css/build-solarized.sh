#!/bin/bash

# depends:  gem install sass
# Depends:  npm install clean-css

HERE="$PWD"

# Go to wp-admin
pushd ../../../../wp-admin/css/colors/blue

# Build CSS
sass --no-cache --sourcemap=none "${HERE}/colors.scss" "${HERE}/colors.css"
# Minify CSS
cleancss "${HERE}/colors.css" -o "${HERE}/colors.min.css"

# Same files for RTL languages
cp "${HERE}/colors.min.css" "${HERE}/colors-rtl.min.css"

popd
