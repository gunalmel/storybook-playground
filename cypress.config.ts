import { defineConfig } from "cypress";

export default defineConfig({
  env: {
    coverage: true,
    codeCoverage: {
      exclude: ['cypress/**/*.*'],
    },
  },
  e2e: {
    setupNodeEvents(on, config) {
      // implement node event listeners here
      require('@cypress/code-coverage/task')(on, config);
      // It's IMPORTANT to return the config object
      // with any changed environment variables
      //used to instrument files included as unit tests
      // on('file:preprocessor', require('@cypress/code-coverage/use-babelrc'));
      return config;
    },
      "baseUrl":"http://localhost:6006",
      // "integrationFolder":"cypress/storybook"
  },
});
