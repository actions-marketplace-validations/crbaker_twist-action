# GitHub Action for Twist Thread/Channel Update Integrations

If you would like to post manual notifications to a [Twist](https://twist.com/) channel or thread, you can use this Github Action.

## Usage
Create a new Integration in Twist by choosing "Add Integration" in the Twist menu. \
Choose `Build` and specify the Ingegration details, when it comes to installing the integration you will be presented with a URL that looks like this:\
`https://twist.com/api/v3/integration_incoming/post_data?install_id=111111&install_token=111111_1b1b1111f1b11ec11f11111b1111f11e`

Save this URL as a Github Secret.


### GitHub Actions
_In this example, the above URL is saved in a secret called TWIST_URL_
```
on: push
jobs:
  curl:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master

    - name: Twist Notification
      uses: crbaker/twist-action@v1.9
      with:
        twist-url: ${{ secrets.TWIST_URL }}
        content: >
          ✅ Some Content for the notification
```

The content property can be any Unicode string and can be formatted as markdown.

### To execute this action locally for testing/fun
```
docker run --rm $(docker build -q .) "https://twist.com/api/v3/integration_incoming/post_data?install_id=111111&install_token=111111_...." "Some Content"
```

## Author
[Chris Baker](https://github.com/crbaker)

## License
[MIT](https://wei.mit-license.org)
