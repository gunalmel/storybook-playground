npm i -D @cypress/code-coverage babel-plugin-istanbul @istanbuljs/nyc-config-babel @istanbuljs/nyc-config-typescript source-map-support ts-node
#and make sure that Istanbul takes advantage of it by adding this configuration in your package.json or in .nycrc.json
#
#  "nyc": {
#    "extends": "@istanbuljs/nyc-config-typescript",
#    "all": true,
#    "check-coverage": true
#  },

#In case you're compiling TS through the TSC, you'll need to manually make Istanbul instrument your TS source files and serve that to Cypress:
#
#npx nyc instrument --compact=false src instrumented

## put the following line in cypress/support/e2e.ts and cypress/support/component.ts files
# import '@cypress/code-coverage/support'

##in cypress.config.ts file in setupNodeEvents functions put the following lines
#      require('@cypress/code-coverage/task')(on, config);
#      //used to instrument files included as unit tests, e.g.: if you like spec.* files run by cypress (unit tests) to be instrumented and collected coverage then
#      on('file:preprocessor', require('@cypress/code-coverage/use-babelrc'))
#      return config;
#also
#env: {
#  codeCoverage: {
#    exclude: ['cypress/**/*.*'],
#  },
#}


## in .babelrc file
#  "presets": ["@babel/preset-env","@babel/typescript","@babel/preset-react"],
#  "plugins": ["@babel/plugin-proposal-class-properties", "istanbul"]

# jest config coverageDirectory override is not supported by create react app after/before eject