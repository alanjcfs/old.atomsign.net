var path = require("path");

module.exports = {
  entry: {
    app: [
      './index.js'
    ]
  },

  output: {
    path: path.resolve(__dirname + '/dist'),
    filename: '[name].js',
  },

  module: {
    rules: [
      {
        test: /\.html$/,
        exclude: /node_modules/,
        use: {
          loader: 'file-loader?name=[name].[ext]',
        }
      }, {
        test: /\.(css|scss)$/,
        exclude: /node_modules/,
        use: [
          {
            loader: 'style-loader'
          },
          {
            loader: 'css-loader'
          },
          {
            loader: 'postcss-loader'
          }
        ]
      }, {
        test: /\.elm$/,
        exclude: [/elm-stuff/, /node_modules/],
        use: {
          loader: 'elm-webpack-loader',
          options: {}
        }
      }, {
        test: /\.woff(2)?(\?v=[0-9]\.[0-9]\.[0-9])?$/,
        exclude: /node_modules/,
        use: {
          loader: 'url-loader?limit=10000&mimetype=application/font-woff',
        }
      }, {
        test: /\.(ttf|eot|svg|png|ico)(\?v=[0-9]\.[0-9]\.[0-9])?$/,
        exclude: /node_modules/,
        use: {
          loader: 'file-loader?name=[name].[ext]',
        }
      }
    ],
    noParse: /\.elm$/,
  },

  devServer: {
    inline: true,
    stats: { colors: true },
    host: '0.0.0.0',
    disableHostCheck: true,
  },
};
