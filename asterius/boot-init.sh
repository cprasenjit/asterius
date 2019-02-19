#!/bin/sh -e

rm -rf $ASTERIUS_TMP_DIR $ASTERIUS_LIB_DIR
mkdir -p $ASTERIUS_TMP_DIR
mkdir -p $ASTERIUS_LIB_DIR
cp -r $ASTERIUS_SANDBOX_GHC_LIBDIR/. $ASTERIUS_LIB_DIR
mkdir $ASTERIUS_LIB_DIR/package.conf.d
cp $ASTERIUS_BOOT_LIBS_DIR/rts/rts.conf $ASTERIUS_LIB_DIR/package.conf.d/
$ASTERIUS_AHCPKG --package-db=$ASTERIUS_LIB_DIR/package.conf.d recache
mkdir $ASTERIUS_LIB_DIR/rts
