#!/bin/sh

src=powered_by_Eiffel_Square_Logo_blue.svg
srccolor="#5592f6"
prefix=powered_by_Eiffel_Square_Logo
sh ./clone_logo.sh $src ${prefix}_cyan.svg  $srccolor "#69ffee"
sh ./clone_logo.sh $src ${prefix}_red.svg  $srccolor "#ff6970"
sh ./clone_logo.sh $src ${prefix}_orange.svg  $srccolor "#ffaf44"
sh ./clone_logo.sh $src ${prefix}_green.svg  $srccolor "#0fd330"
sh ./clone_logo.sh $src ${prefix}_grey.svg  $srccolor "#aaaaaa"
