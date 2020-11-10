const core = require('@actions/core');
const fs = require('fs');


try {
  // `who-to-greet` input defined in action metadata file
  const nameToGreet = core.getInput('who-to-greet');
  console.log(`Hello ${nameToGreet}!`);

  // Set current timestamp to output
  const time = (new Date()).toTimeString();
  core.setOutput("time", time);

  // Scan directories
  const testFolder = core.getInput('dir');
  let files = fs.readdirSync(testFolder)
  files.forEach(file => {
  	console.log(file);
  });
  core.setOutput('listing', files);

  // Generate random number
  core.setOutput('random-id', Math.random())

} catch (error) {
  core.setFailed(error.message);
}
