const core = require('@actions/core');

try {
	console.log("Setting things up")

	// const nameToGreet = core.getInput('who-to-greet');
	console.log(`Good Bye!`)
	console.log(`(good bye ${nameToGreet})`);

} catch (error) {
	core.setFailed(error.message);
}