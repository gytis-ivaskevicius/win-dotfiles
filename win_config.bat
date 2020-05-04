
choco install -y autohotkey discord firefox neovim cygwin streamlabs-obs git dashlane 7zip
choco install -y visualstudio2019community nsis openssl
choco install -y steam
choco install valley-benchmark gpu-z openhardwaremonitor

pathman /as "C:\Program Files\Git\bin" 

git config --global user.email "gytis02.21@gmail.com"
git config --global user.name "Gytis Ivaskevicius"

if not exist "%HOMEPATH%\Projects" (
  mkdir "%HOMEPATH%\Projects"
)

if not exist "%HOMEPATH%\Projects\win-dotfiles" (
  git clone https://github.com/WithoutCaps/win-dotfiles "%HOMEPATH%\Projects\win-dotfiles"
)
if not exist "%HOMEPATH%\Projects" (
  mklink /D "C:\tools\cygwin\home\%USERNAME%\Projects" "%HOMEPATH%\Projects"
)

del "C:\tools\cygwin\home\%USERNAME%\.bashrc"
del "C:\tools\cygwin\home\%USERNAME%\.bash_profile"
del "C:\tools\cygwin\home\%USERNAME%\.inputrc"
del "C:\tools\cygwin\home\%USERNAME%\.profile"

mklink "C:\tools\cygwin\home\%USERNAME%\.bashrc"       "%HOMEPATH%\Projects\win-dotfiles\.bashrc" 
mklink "C:\tools\cygwin\home\%USERNAME%\.bash_profile" "%HOMEPATH%\Projects\win-dotfiles\.bash_profile"
mklink "C:\tools\cygwin\home\%USERNAME%\.inputrc"      "%HOMEPATH%\Projects\win-dotfiles\.inputrc"
mklink "C:\tools\cygwin\home\%USERNAME%\.profile"      "%HOMEPATH%\Projects\win-dotfiles\.profile"


pause