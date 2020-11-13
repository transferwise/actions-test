# actions-test
Example of a custom github action

## Usage example
```yml
    container: prohfesor/actions_test
    steps:

      - name: Hello world action step
        id: hello
        shell: bash
        env:
          WHO_TO_GREET: 'Transferwise'
          DIR: /
        run: |
          source /entrypoint.sh
          greet
          out_time
          out_other

      # Use the output from the `hello` step
      - name: Get all outputs
        run: |
          echo "The random id was ${{ steps.hello.outputs.random-id }}"
          echo "The listing was: " && echo "${{ steps.hello.outputs.listing }}"
          echo "The time was ${{ steps.hello.outputs.time }}"
```

Run examples: https://github.com/transferwise/actions-test/pull/4/checks