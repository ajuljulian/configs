#!/bin/zsh

if test -f "$1"; then
  echo "A file named $1 already exists"
  exit 1
elif test -d "$1"; then
  echo "A directory named $1 already exists"
  exit 2
fi

KERNEL_NAME=`basename $1`-env-kernel

mkdir $1 && cd $1
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install ipykernel
python -m ipykernel install --user --name=$KERNEL_NAME
pip install notebook

uninstall_kernel_file="uninstall_kernel.sh"
echo "#!/bin/zsh" > $uninstall_kernel_file
echo "jupyter kernelspec  uninstall $KERNEL_NAME" >> $uninstall_kernel_file
chmod +x $uninstall_kernel_file

exit 0

