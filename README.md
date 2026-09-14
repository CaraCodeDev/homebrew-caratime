# homebrew-caratime

Homebrew tap for `caratime`, the CLI and background agent for [caraTime](https://github.com/CaraCodeDev/caratime-app).

```sh
brew install caracodedev/caratime/caratime
caratime auth
caratime start
```

After `brew upgrade caracodedev/caratime/caratime`, run `caratime restart` so the agent picks up the new binary.

Apple Silicon only. The formula installs a single compiled binary; nothing is built on your machine.
