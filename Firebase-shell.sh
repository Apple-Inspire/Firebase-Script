echo Add Firebase to your iOS Project
read -p "Drag the path of your project file> " fpath
cd $fpath
#ls

sudo gem install cocoapods

pod init

read -p "enter your project name> " fname

cat <<EOD > Podfile
#isohelp.tk
platform :ios, '9.0'

target '$fname' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  
  # Pods for $fname
  pod 'Firebase/Core'
  pod 'Firebase/Database'
  pod 'Firebase/Auth'
 

end

EOD

pod install

echo "Done Installing you may open $fname .workspace file "
