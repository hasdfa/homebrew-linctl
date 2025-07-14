# Homebrew Linctl

This is a [Homebrew](https://brew.sh) tap for [linctl](https://github.com/dorkitude/linctl), a Linear.app CLI tool.

## 🍺 Installation

```bash
brew tap dorkitude/linctl
brew install linctl
```

## 📦 Available Formulae

- `linctl` - A powerful CLI tool for Linear.app

## 🔧 Development

To update the formula after a new release:

1. Update the `url` in `Formula/linctl.rb` to point to the new release tarball
2. Update the `sha256` hash:
   ```bash
   curl -L https://github.com/dorkitude/linctl/archive/refs/tags/vX.X.X.tar.gz | shasum -a 256
   ```
3. Commit and push the changes

## 📝 License

See the [linctl repository](https://github.com/dorkitude/linctl) for license information.