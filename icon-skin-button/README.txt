1.
Download and install 
http://download.macromedia.com/pub/flex/sdk/flex_sdk_4.6.zip

2.
Download and rename
	http://fpdownload.macromedia.com/pub/flashplayer/updaters/10/playerglobal10_3.swc
into
	frameworks\libs\player\10.3\playerglobal.swc
creating directories where needed

3.
Create an environment variable for your shell of choice to point to the unzipped folder of flex_sdk_4.6.zip
e.g. export FLEX="C:\Prime-examples\flex_sdk_4.6"

4.
Run the following command to rebuild Assets.swf.
$FLEX/bin/mxmlc Assets.as -debug=true -target-player="10.3.0" -static-link-runtime-shared-libraries=true -output Assets.swf -source-path assets

5. 
Open Test.hxproj with FlashDevelop to build and run.
Alternatively you can run "haxe Test.hxml" to build from command line.