var path = require('path');
var webpack = require('webpack');

module.exports = {
    entry: './app.jsx',
    output: {
        filename: './bundle.js',
    },
    module: {
        rules: [
            {
                test: [/\.jsx?$/],
                exclude: /(node_modules)/,
                use: {
                    loader: 'babel-loader',
                    options: {
                        presets: ['@babel/env', '@babel/react']
                    }
                },
            }
        ]
    },
    devtool: 'source-map',
    resolve: {
        extensions: ['.js', '.jsx', '*']
    },
    plugins: [
        new webpack.DefinePlugin({
            "process.env": "{}",
            global: {}
        })
    ]
};