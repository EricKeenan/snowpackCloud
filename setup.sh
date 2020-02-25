# Install 
sudo apt-get install vim
sudo apt-get install git
sudo apt-get install cmake
sudo apt install cmake-curses-gui
sudo apt-get install libproj-dev proj-data proj-bin
sudo apt-get install libblas-dev liblapack-dev
sudo apt install zip

# Python packages
sudo -E conda install -c anaconda pandas
sudo -E conda install -c anaconda numpy 
sudo -E conda install -c conda-forge matplotlib 

# Jupyter Hub settings
sudo tljh-config set limits.cpu 1
sudo tljh-config set limits.memory 3G
sudo tljh-config set services.cull.timeout 3600
sudo tljh-config reload

# Once you have configured and generated in cmake, run the following command to install
# sudo make install
