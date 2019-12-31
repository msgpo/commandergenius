#!/system/bin/sh

#OBB_VERSION=191224
OBB_VERSION=$ANDROID_PACKAGE_VERSION_CODE

echo "Extracting data files"
cd $SECURE_STORAGE_DIR
./busybox tar xvJf $ANDROID_OBB_DIR/main.$OBB_VERSION.$ANDROID_PACKAGE_NAME.obb
echo "Extracting overlay data files"
./busybox tar xvJf $DATADIR/overlay.tar.xz
cd $SECURE_STORAGE_DIR/img
echo "Installation path: $SECURE_STORAGE_DIR/img"
./postinstall.sh
