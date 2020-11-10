# actions-test
Different ways to create a custom action.

Here you can find examples of how to create very simple github action, with different approaches available.

This simple action prints out `hello world` (or `!FNAME!`, as set).
Then it takes a directory listing, from the path specified in input vars.
Output vars contain a timestamp, a random number and a result of directory listing.

## Check branches for detailed examples
- Docker action https://github.com/transferwise/actions-test/tree/docker-action
- Javascript action https://github.com/transferwise/actions-test/tree/javascript-action
- Composite action https://github.com/transferwise/actions-test/tree/composite-action
- Custom docker (:circleci: way) https://github.com/transferwise/actions-test/tree/custom-docker-action