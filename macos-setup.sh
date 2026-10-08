# Script to assist building project on MacOS on Apple silicon

export LDFLAGS="-L/opt/homebrew/lib"
export CPPFLAGS="-I/opt/homebrew/include"
export CPATH="/opt/homebrew/include"
export LIBRARY_PATH="/opt/homebrew/lib"

brew install mesa libusb qt qtsvg cmake gcc 

cp /opt/homebrew/include/zstd.h src/nfc-lib/lib-rt/rt-lang/src/main/cpp 
cp /opt/homebrew/include/zstd_errors.h src/nfc-lib/lib-rt/rt-lang/src/main/cpp 

mkdir -p build
cd build
cmake ..
make -j 4
