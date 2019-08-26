exports.config = {
    seleniumAddress: 'http://localhost:4444/wd/hub',
    capabilities: {
        'browserName': 'chrome'
      },
    framework: 'custom',  // set to "custom" instead of cucumber.
  
    frameworkPath: require.resolve('protractor-cucumber-framework'),  // path relative to the current config file
  
    specs: [
      'features/*.feature'     // Specs here are the cucumber feature files
    ],
  
    basURL: 'http://localhost:8080',
  
    // cucumber command line options
  
  cucumberOpts: {
   require: 'features/step_definitions/*.js',
   tags: false,
   format: [],
   profile: false,
   'no-source': true,
   compiler:[]
   }
};