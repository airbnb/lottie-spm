namespace :build do
  desc 'Builds the Lottie example app'
  namespace :example do
    task all: ['iOS:simulator', 'iOS:device', 'macOS:arm64', 'macOS:x86_64', 'macCatalyst:arm64', 'macCatalyst:x86_64']

    namespace :iOS do
      task :simulator do
        xcodebuild('build -scheme "Example (iOS)" -destination "platform=iOS Simulator,name=iPhone 8" -workspace Example/Example.xcworkspace')
      end
      task :device do
        xcodebuild('build -scheme "Example (iOS)" -destination generic/platform=iOS -workspace Example/Example.xcworkspace')
      end
    end

    namespace :macOS do
      task :arm64 do
        xcodebuild('build -scheme "Example (macOS)" -destination "platform=macOS,arch=arm64" -workspace Example/Example.xcworkspace')
      end
      task :x86_64 do
        xcodebuild('build -scheme "Example (macOS)" -destination "platform=macOS,arch=x86_64" -workspace Example/Example.xcworkspace')
      end
    end

    namespace :macCatalyst do
      task :arm64 do
        xcodebuild('build -scheme "Example (iOS)" -destination "platform=macOS,variant=Mac Catalyst,arch=arm64" -workspace Example/Example.xcworkspace')
      end
      task :x86_64 do
        xcodebuild('build -scheme "Example (iOS)" -destination "platform=macOS,variant=Mac Catalyst,arch=x86_64" -workspace Example/Example.xcworkspace')
      end
    end
  end
end

namespace :test do
  desc 'Tests the Lottie package for supported platforms'
  namespace :package do
    desc 'Tests the Lottie package for all supported platforms'
    task all: ['iOS', 'macOS', 'tvOS']

    desc 'Tests the Lottie package for iOS'
    task :iOS do
      xcodebuild('test -scheme Lottie -destination "platform=iOS Simulator,name=iPhone 8"')
    end

    desc 'Tests the Lottie package for macOS'
    task :macOS do
      xcodebuild('test -scheme Lottie -destination platform=macOS')
    end

    desc 'Tests the Lottie package for tvOS'
    task :tvOS do
      xcodebuild('test -scheme Lottie -destination "platform=tvOS Simulator,name=Apple TV"')
    end
  end
end

def xcodebuild(command)
  # Check if the mint tool is installed -- if so, pipe the xcodebuild output through xcbeautify
  `which mint`

  if $?.success?
    sh "set -o pipefail && xcodebuild #{command} | mint run thii/xcbeautify@0.10.2"
  else
    sh "xcodebuild #{command}"
  end
end
