# actions-test
Example of a custom github action

## Usage example
```yml
    steps:

      - name: Hello world action step
        id: hello
        uses: transferwise/actions-test@v0.6.1-docker
        with:
          who-to-greet: 'Transferwise'
          dir: /

      # Use the output from the `hello` step
      - name: Get all outputs
        run: |
          echo "The random id was ${{ steps.hello.outputs.random-id }}"
          echo "The listing was: " && echo "${{ steps.hello.outputs.listing }}"
          echo "The time was ${{ steps.hello.outputs.time }}"
```

Run examples: https://github.com/transferwise/actions-test/pull/2/checks