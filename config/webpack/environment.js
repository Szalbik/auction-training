const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.append('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  'jquery.easing': 'jquery.easing',
  Popper: ['popper.js', 'default']
}))

module.exports = environment
