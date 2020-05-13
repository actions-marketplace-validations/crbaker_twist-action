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

    - name: Twist Notification
      uses: crbaker/actions-twister@v1.8
      with:
        twist-url: 112234
        content: "Some Content"
```

### Docker
```
docker run --rm $(docker build -q .) "https://twist.com/api/v3/integration_incoming/post_data?install_id=12345&install_token=12345_...." "Some Content"
```

## Author
[Chris Baker](https://github.com/crbaker)

## License
[MIT](https://wei.mit-license.org)
