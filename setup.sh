set -e
ruby --version
root=$(pwd)
rm -rf ./react-native

sh ./.github/workflows/scripts/install-react-native.sh

cd "$root"
rm -rf ./react-native/ReactNativeKit/ios/*
cp -r ./ReactNativeKit/* ./react-native/ReactNativeKit/ios/

cd ./react-native/ReactNativeKit/ios
pod install
./build.sh
xed .
