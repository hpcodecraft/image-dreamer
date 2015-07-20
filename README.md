# image-dreamer
"Dreams" images, such as shown in the [Google Research blog post on "Inceptionism"](http://googleresearch.blogspot.ch/2015/06/inceptionism-going-deeper-into-neural.html).

## What's it do?
Using a deep neural network, it turns images like this:

![](https://cloud.githubusercontent.com/assets/235769/8487629/318827be-20c2-11e5-9b3a-ec15b0871a4d.jpg)

Into this:

![](https://cloud.githubusercontent.com/assets/235769/8487642/3f91eb74-20c2-11e5-87aa-87ed27236f22.png)

Read the [Google Research blog post on "Inceptionism"](http://googleresearch.blogspot.ch/2015/06/inceptionism-going-deeper-into-neural.html) to learn more about how it works.

## What's different in this fork?
 * Fully automated batch dreaming. A cronjob will take care of starting the dream process, so all you need to do is feeding it images.
 * Less output clutter. The pycaffe log settings have been tweaked to remove a lot of output that isn't really necessary

## Installation
 * Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](https://www.vagrantup.com/)
 * Clone or download a zipfile of this repo
 * `cd image-dreamer`
 * `vagrant up`
 * Go grab a coffee, this will take a while

## Automated Dreaming
 * Copy any JPG or PNG images you want to "dreamify" into the `image-dreamer/images/new` directory
 * Go to sleep, watch a movie or do whatever else you like
 * Come back later and grab your finished dream images from `image-dreamer/images/finished`

If you want to fiddle with the deepdream parameters, you can change them in `dream.sh`

## Known Issues
  Things will crash if the image filenames contain spaces. Don't use them.

## Credits
Many thanks to @Dhar for providing the original image-dreamer!

Thanks to the great work of Google's [deepdream](https://github.com/google/deepdream/blob/master/dream.ipynb) team!

The Vagrant file and Vagrantbox are based on those provided by [Data Science Toolbox](http://datasciencetoolbox.org/).