# docker-gitbook

A Docker Container for [gitbook](https://github.com/GitbookIO/gitbook). Inspired by [billryan/docker-gitbook](https://github.com/billryan/docker-gitbook).

## Usage

Read the official [GitBook Toolchain Documentation](http://toolchain.gitbook.com/) documentation [GitbookIO/gitbook](https://github.com/GitbookIO/gitbook#how-to-use-it) first.

```bash
# init
docker run --rm -v "$PWD:/gitbook" jaceju/gitbook init [<doc_folder>]
# install
docker run --rm -v "$PWD:/gitbook" jaceju/gitbook install [<doc_folder>]
# serve
docker run -d --rm -v "$PWD:/gitbook" -p 4000:4000 jaceju/gitbook serve [<doc_folder>]
# build
docker run --rm -v "$PWD:/gitbook" jaceju/gitbook build [<doc_folder>] [<target_folder>]
```

For short, you can use alias for the long command line text. Place the alias statement in your `.bashrc` or `.zshrc`.

```bash
alias gitbook='docker run --rm -v "$PWD":/gitbook -p 4000:4000 jaceju/gitbook'
# init
gitbook init
# serve
gitbook serve
# build
gitbook build
# pdf output
gitbook pdf .
```

## Build Docker Image

```
docker build --no-cache -t jaceju/gitbook:3.2.3 --build-arg VERSION=3.2.3 .
```

## License

[The MIT License (MIT)](https://opensource.org/licenses/MIT)
