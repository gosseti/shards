# Shards

Shards is a small portfolio app built on Sinatra. It was inspired by the old flash portfolio of [Hejz](http://hejz.com/), and has been brought up to date using Flexbox, translations and animations.

The app fetches a sequence of images using the `shard_xx.jpg` format, and loops through them, finding the width and then producing inline CSS for each element’s `.active` state.

## Demo

[ ![Shards screenshot](https://raw.github.com/gosseti/shards/master/public/images/shards_screenshot.png "Shards") ](http://shards.gosseti.com/ "Shards")

## Dependencies

- Sinatra
- gulp
- node.js and npm (required for gulp)

## Installing and running

- Clone the repositry to your computer
- `cd shards` to get into the directory you’ve just created
- `bundle install` to fetch the gems
- `npm install` to fetch the gulp.js dependencies
- `rake s` to start the server