namespace :build do
  desc 'Builds the Lottie example app'
  task :example do
    xcodebuild('build -scheme Example -destination "platform=iOS Simulator,name=iPhone 8" -workspace Example/Example.xcworkspace')
  end
end

namespace :test do
  desc 'Tests the Lottie package for supported platforms'
  namespace :package do
    desc 'Tests the Lottie package for all supported platforms'
    task all: ['iOS', 'macOS', 'tvOS', "spm"]

    desc 'Tests the Lottie package for iOS'
    task :iOS do
      xcodebuild('build -scheme Lottie -destination generic/platform=iOS -workspace Example/Example.xcworkspace -list')
    end

    desc 'Tests the Lottie package for macOS'
    task :macOS do
      xcodebuild('build -scheme Lottie -destination generic/platform=macOS -workspace Example/Example.xcworkspace -list')
    end

    desc 'Tests the Lottie package for tvOS'
    task :tvOS do
      xcodebuild('build -scheme Lottie -destination generic/platform=tvOS -workspace Example/Example.xcworkspace -list')
    end

    desc 'Tests the Lottie package using Swift Package Manager directly'
    task :spm do
      sh 'swift test'
    end
  end
end

def xcodebuild(command)
  # Check if the mint tool is installed -- if so, pipe the xcodebuild output through xcbeautify
  #`which mint`

  #if $?.success?
  #  sh "set -o pipefail && xcodebuild #{command} | mint run thii/xcbeautify@0.10.2"
  #else
    sh "xcodebuild #{command}"
  #end
end
