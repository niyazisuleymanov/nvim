if [ -z "$(ls -A ~/.local/share/nvim/site/pack/packer/start/packer.nvim)" ]; then
  echo "installing packer.nvim..."
  git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
else
  echo "packer.nvim already installed."
fi

echo "running PackerSync..."
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
echo 'Done. Enjoy!'
