# kinectable_pipe

kinectable_pipe is a command-line utility that dumps user skeleton data from a Microsoft Kinect device to a standard Unix pipe.

### Why?

To bring Unix-y goodness to the world of Microsoft Kinect programming!

### No, really, why?

Because Kinect programming is a pain in the neck, and by trivializing the device's output into a simple text format, it becomes infinitely easier to digest in the scripting language of your choice.

### This seems simple to the point of being almost useless

Yes, that's the point. Do One Thing and Do It Well. There's an accompanying rubygem that will add all the smart stuff like advanced gesture recognition, events, etc.

## USAGE

    % kinectable_pipe | ruby gesture_recognizer.rb | python play_light_show.py

## INSTALLATION (OS X / homebrew)

    # must have universal binary for libusb
    brew uninstall libusb
    brew install libusb --universal

    brew tap marshally/alt

    brew install kinectable_pipe
    
    # now plug in your kinect
    # and run this command in the terminal
    
    kinectable_pipe
    
    # step back from the sensor, wave your arms like a lunatic
    # until it recognizes you and starts pumping out skeleton data
    # to STDOUT

## OPTIONS

    -r 15 # restrict output to 15fps, Kinect max is 30fps

## TODO

1. Linux install instructions
1. Recognize all available `xn::GestureGenerator`
1. Fix output to work with non-interactive terminal sessions.
1. Improve Ruby sample app.
1. Add sample apps for other scripting languages.
1. Add CLI argument for alternate output encodings (XML, msgpack, BERT, whatever).