# Install Flutter
sudo apt-get update
# sudo apt-get install -y  --no-install-recommends git
git clone https://github.com/flutter/flutter.git -b stable
export PATH="$HOME/flutter/bin:$PATH"

# Install Android SDK
wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip
unzip sdk-tools-linux-4333796.zip
mkdir -p $HOME/Android/Sdk
mv tools $HOME/Android/Sdk
export ANDROID_HOME=$HOME/Android/Sdk

# Install required packages
yes | $ANDROID_HOME/tools/bin/sdkmanager --licenses
$ANDROID_HOME/tools/bin/sdkmanager --update
$ANDROID_HOME/tools/bin/sdkmanager "platform-tools" "platforms;android-29" "build-tools;29.0.2"

# Configure Flutter
flutter doctor --android-licenses
flutter doctor