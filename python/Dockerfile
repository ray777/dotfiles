FROM python:3.9.1-slim
RUN pip install --upgrade pynvim
RUN pip install python-language-server
RUN pip install flake8
RUN pip install yapf
RUN apt-get update
RUN apt-get -y install curl
RUN apt-get -y install git
RUN apt-get -y install neovim
RUN mkdir -p /root/.config/nvim/
RUN sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
COPY ./init.vim /root/.config/nvim/init.vim
RUN nvim --headless +PlugInstall +qa
