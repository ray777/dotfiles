FROM archlinux:base-devel-20210131.0.14634
# Neovim
RUN mkdir -p /root/.local/
WORKDIR /root/.local/
RUN curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage \
    && chmod u+x nvim.appimage \
    && ./nvim.appimage --appimage-extract \
    && ln -s /root/.local/squashfs-root/AppRun /usr/bin/nvim
# Vim-plug
RUN sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# Utils
RUN pacman -Sy --noconfirm git python python-pip glibc
RUN pip install --upgrade pynvim python-language-server flake8 yapf
# Install plugins
RUN mkdir -p /root/.config/nvim/
COPY ./init.vim /root/.config/nvim/init.vim
RUN nvim --headless +PlugInstall +qa
CMD ["/bin/bash"]
