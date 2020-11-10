# actions-test
Example of a custom github action

## Composite action
Usage:
```yml
    steps:

      - name: Hello world action step
        id: hello
        uses: transferwise/actions-test@v0.6.0-composite
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
