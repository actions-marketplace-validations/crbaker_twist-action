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
      uses: crbaker/actions-twister@v1
      env:
        TWIST_HOOK_INSTALL_ID: 12331
        TWIST_HOOK_INSTALL_TOKEN: 123213123
        TWIST_HOOK_TITLE: Some Title
        TWIST_HOOK_CONTENT: Some Content
```

### Docker
```
export TWIST_HOOK_INSTALL_ID=138459
export TWIST_HOOK_INSTALL_TOKEN=138459_d27472200652d46e72ae07e09d937a50
export TWIST_HOOK_TITLE="Some\ Title"
export TWIST_HOOK_CONTENT="Some\ Content"

docker run --env TWIST_HOOK_INSTALL_ID --env TWIST_HOOK_INSTALL_TOKEN --env TWIST_HOOK_TITLE --env TWIST_HOOK_CONTENT --rm $(docker build -q .)
```


## Author
[Chris Baker](https://github.com/crbaker)


## License
[MIT](https://wei.mit-license.org)
