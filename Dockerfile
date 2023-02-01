FROM alpine:latest
WORKDIR /root

COPY install_neovim.sh install_neovim.sh
RUN sh install_neovim.sh

# used for vim-lsp server
RUN mkdir -p /root/.cache/tmp

# copy config and install plugins
COPY .config /root/.config
RUN nvim -c 'qa!'
