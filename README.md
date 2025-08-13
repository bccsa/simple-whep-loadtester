# simple-whep-loadtester

A simple WHEP load tester based on [simple-whep-client](https://github.com/meetecho/simple-whep-client)

**_At the moment it only does audio, you can add the video flag in the start.sh file, see [this](https://github.com/meetecho/simple-whep-client) on how to._**

## Usage

install dependencies

```bash
bash install.sh
```

start the load tester

```bash
bash start.sh -u <Whep url> -s <Session count> -w <timeout between starting sessions in seconds (Optional)>
```
