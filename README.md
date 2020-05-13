# GitHub Action for Twist Web Hooks

## Usage

### GitHub Actions
```
on: push
jobs:
  curl:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: Twist
      uses: crbaker/actions-twister@v1.4
      with:
        install-id: 112234
        install-token: 123434_d3232132131
        title: "Some Title"
        content: "Some Content"
```

### Docker
```
docker run --rm $(docker build -q .) "112234" "123434_d3232132131" "Some Title" "Some Content"
```

## Author
[Chris Baker](https://github.com/crbaker)

## License
[MIT](https://wei.mit-license.org)
