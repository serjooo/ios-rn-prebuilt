set -e
ruby --version
export NO_FLIPPER=1
root=$(pwd)
rm -rf ./react-native
mkdir -p ./react-native
cd ./react-native
npx @react-native-community/cli init ReactNativeKit
cd ./ReactNativeKit
npm install \
    @react-navigation/native@7.0.15 \
    react-native-screens@4.9.2 \
    react-native-safe-area-context@5.3.0 \
    @react-navigation/native-stack@7.2.1 \
    react-native-gesture-handler@2.12.0 \
    react-native-reanimated@3.17.1 \
    @react-navigation/drawer@7.1.2 \
    @react-native-picker/picker@2.11.0 \
    react-native-svg@15.11.2 \
    @react-native-async-storage/async-storage@2.1.2 --save-exact

cd $root
rm -rf ./react-native/ReactNativeKit/ios/*
cp -r ./ReactNativeKit/* ./react-native/ReactNativeKit/ios/

cd ./react-native/ReactNativeKit/ios
pod install
./build.sh
xed .
