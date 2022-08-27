npm install -g neovim
pip install pynvim
mkdir -p ~/.config/nvim/vim-plug
cp nvim/vim-plug/plugins.vim ~/.config/nvim/vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim -c "source $HOME/.config/nvim/vim-plug/plugins.vim" -c "PlugInstall --sync" -c "qa"
cp nvim/init.vim ~/.config/nvim
nvim -c "CocInstall -sync coc-clangd coc-eslint coc-jedi coc-json coc-prettier coc-sh coc-snippets|q" -c "qa"
