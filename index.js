const core = require('@actions/core');
const github = require('@actions/github');
const fs = require('fs');


try {
  // `who-to-greet` input defined in action metadata file
  const nameToGreet = core.getInput('who-to-greet');
  console.log(`Hello ${nameToGreet}!`);

  // Set current timestamp to output
  const time = (new Date()).toTimeString();
  core.setOutput("time", time);

  // Get the JSON webhook payload for the event that triggered the workflow
  const payload = JSON.stringify(github.context.payload, undefined, 2)
  console.log(`The event payload: ${payload}`);

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
