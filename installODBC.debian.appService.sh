root@df3120cbad45:/home# history
    1  curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
    2  lsb_release
    3  echo $lsb_release
    4  lsb_release
    5  cat /etc/*release*
    6  apt-get install -y msodbcsql17
    7  cat /etc/apt/sources.list.d/mssql-release.list
    8  curl https://packages.microsoft.com/config/debian/11/prod.list >>/etc/apt/sources.list.d/mssql-release.list
    9  apt-get update
   10  ACCEPT_EULA=Y apt-get install -y msodbcsql17
   11  ACCEPT_EULA=Y apt-get install -y mssql-tools
   12  echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
   13  source ~/.bashrc
   14  sudo apt-get install -y unixodbc-dev
   15  apt-get install -y unixodbc-dev
   16  history
