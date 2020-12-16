#!/usr/bin/env bash
# WTFPL by koumaza

# Apt
## Removed git and git-lfs
sudo apt remove --purge ghc-8.8.4 ghc-8.10.2 ghc-8.6.5 azure-cli google-cloud-sdk adoptopenjdk-11-hotspot hhvm libgl1-mesa-dri google-chrome-stable dotnet-sdk-5.0 firefox adoptopenjdk-8-hotspot llvm-10-dev llvm-9-dev dotnet-sdk-3.1 powershell llvm-8-dev moby-containerd snapd mysql-server-core-8.0 mono-devel moby-engine moby-cli podman mongodb-org-server libllvm10 dotnet-runtime-3.1 linux-azure-headers-5.4.0-1032 dotnet-runtime-5.0 libllvm9 linux-modules-5.4.0-1032-azure mysql-client-core-8.0 mongodb-org-mongos mono-llvm-tools libllvm8 gcc-10 ansible libclang-common-10-dev moby-buildx mecab-ipadic containernetworking-plugins mongodb-org-shell postgresql-13 libclang-common-9-dev msbuild libclang-common-8-dev libclang-cpp10 libicu-dev kubectl r-base-core liblldb-9 libclang-cpp9 libclang1-10 libicu66 liblldb-8 cabal-install-3.4 clang-8 vim-runtime g++-10 gcc-9 gfortran-10 gcc-8 dotnet-targeting-pack-5.0 mono-llvm-support cpp-10 referenceassemblies-pcl g++-9 g++-8 gcc-7 gfortran-9 libperl5.30 gfortran-8 cpp-9 libclang1-8 g++-7 cpp-8 liblapack-dev dotnet-targeting-pack-3.1 cpp-7 linux-azure-tools-5.4.0-1032 skopeo mono-utils ruby2.7-doc libz3-4 buildah monodoc-manual humanity-icon-theme llvm-10 netstandard-targeting-pack-2.1 iso-codes libpython3.8-dev libc6-dev sphinxsearch aspnetcore-runtime-5.0 moby-runc libstdc++-10-dev llvm-9 libstdc++-9-dev libwxgtk3.0-gtk3-0v5 aspnetcore-runtime-3.1 perl-modules-5.30 locales shellcheck libruby2.7 llvm-8 libgs9 libstdc++-8-dev gh libstdc++-7-dev systemd liblldb-10 mono-roslyn libc6-i386 libgcc-9-dev libgcc-10-dev mercurial-common libgcc-8-dev grub-common libc6 libgcc-7-dev aspnetcore-targeting-pack-5.0 python3-twisted linux-headers-5.4.0-1032-azure poppler-data fonts-lato texinfo fonts-urw-base35 dotnet-apphost-pack-5.0 perl-base aspnetcore-targeting-pack-3.1 ieee-data binutils-x86-64-linux-gnu libglib2.0-dev libgtk-3-0 libmonosgen-2.0-dev libmysqlclient-dev librsvg2-2 php8.0-cgi php7.4-cgi udev liblcms2-dev libpython2.7-stdlib r-cran-survival linux-image-5.4.0-1032-azure php8.0-common libpython3.8-stdlib libssl-dev 
sudo rm -rf /var/lib/apt/lists/
sudo rm -rf /var/cache/apt/archives/

# Docker
sudo docker system prune -a

# Dir
sudo rm -rf \
  /usr/share/{dotnet,swift,rust,miniconda,az_*,gradle-*} \
  /usr/local/lib/{android,node_modules} \
  /opt
