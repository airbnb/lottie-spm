namespace :build do
  desc 'Builds the Lottie example app'
  namespace :example do
    desc 'Builds the Example apps for all supported platforms / architectures. Requires valid code signing.'
    task all: ['iOS:simulator', 'iOS:device', 'tvOS:simulator', 'visionOS:simulator', 'macOS:arm64', 'macOS:x86_64', 'macCatalyst:arm64', 'macCatalyst:x86_64']

    desc 'Builds the Example app for platforms / architectures supported by Github Actions CI'
    task github_actions: ['iOS:simulator', 'tvOS:simulator', 'visionOS:simulator', 'macOS:x86_64']

    namespace :iOS do
      task :simulator do
        xcodebuild('build -scheme "Example" -destination "platform=iOS Simulator,name=iPhone SE (3rd generation)" -workspace Example/Example.xcworkspace')
      end
      task :device do
        xcodebuild('build -scheme "Example" -destination generic/platform=iOS -workspace Example/Example.xcworkspace')
      end
    end

    namespace :tvOS do
      task :simulator do
        xcodebuild('build -scheme "Example" -destination "platform=tvOS Simulator,name=Apple TV 4K (3rd generation)" -workspace Example/Example.xcworkspace')
      end
    end

    namespace :visionOS do
      task :simulator do
        ifVisionOSEnabled {
          xcodebuild('build -scheme "Example" -destination "platform=visionOS Simulator,name=Apple Vision Pro" -workspace Example/Example.xcworkspace')
        }
      end
    end

    namespace :macOS do
      task :arm64 do
        xcodebuild('build -scheme "Example" -destination "platform=macOS,arch=arm64" -workspace Example/Example.xcworkspace')
      end
      task :x86_64 do
        xcodebuild('build -scheme "Example" -destination "platform=macOS,arch=x86_64" -workspace Example/Example.xcworkspace')
      end
    end

    namespace :macCatalyst do
      task :arm64 do
        xcodebuild('build -scheme "Example" -destination "platform=macOS,variant=Mac Catalyst,arch=arm64" -workspace Example/Example.xcworkspace')
      end
      task :x86_64 do
        xcodebuild('build -scheme "Example" -destination "platform=macOS,variant=Mac Catalyst,arch=x86_64" -workspace Example/Example.xcworkspace')
      end
    end
  end
end

namespace :test do
  desc 'Tests the Lottie package for supported platforms'
  namespace :package do
    desc 'Tests the Lottie package for all supported platforms'
    task all: ['iOS', 'macOS', 'tvOS', 'visionOS']

    desc 'Tests the Lottie package for iOS'
    task :iOS do
      xcodebuild('test -scheme Lottie -destination "platform=iOS Simulator,name=iPhone SE (3rd generation)"')
    end

    desc 'Tests the Lottie package for macOS'
    task :macOS do
      xcodebuild('test -scheme Lottie -destination platform=macOS')
    end

    desc 'Tests the Lottie package for tvOS'
    task :tvOS do
      xcodebuild('test -scheme Lottie -destination "platform=tvOS Simulator,name=Apple TV"')
    end

    desc 'Tests the Lottie package for visionOS'
    task :visionOS do
      ifVisionOSEnabled {
        xcodebuild('test -scheme Lottie -destination "platform=visionOS Simulator,name=Apple Vision Pro"')
      }
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

# Runs the given code block, unless `SKIP_VISION_OS=true`.
# TODO: Remove this once CI only uses Xcode 15.2+.
def ifVisionOSEnabled
  if ENV["SKIP_VISION_OS"] == "true"
    puts "Skipping visionOS build"
  else
    installVisionOSIfNecessary()
    yield
  end
end

def installVisionOSIfNecessary
  # visionOS is unsupported by default on Intel, but we can override this
  # https://github.com/actions/runner-images/issues/8144#issuecomment-1902072070
  sh 'defaults write com.apple.dt.Xcode AllowUnsupportedVisionOSHost -bool YES'
  sh 'defaults write com.apple.CoreSimulator AllowUnsupportedVisionOSHost -bool YES'

  xcodebuild("-downloadPlatform visionOS")
end
