const { environment } = require('@rails/webpacker')
// Inserted  jquery and bootstrap
const webpack = require("webpack")

environment.plugins.append("Provide", new webpack.ProvidePlugin({

$: 'jquery',

jQuery: 'jquery',

Popper: ['popper.js', 'default']

}))
// Inserted jquery and bootstrap end
module.exports = environment
