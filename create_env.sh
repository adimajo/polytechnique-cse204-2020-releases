echo "Installing virtualenv & nbgrader"

pip install --user virtualenv
pip install --user nbgrader
jupyter nbextension install --user --py nbgrader --overwrite
jupyter nbextension enable --user --py nbgrader

echo "Creating virtualenv"

virtualenv cse204

echo "Sourcing the environment"

source cse204/bin/activate

echo "Installing required packages"

pip install -r polytechnique-cse204-2020-releases/requirements.txt
jupyter nbextension install --user --py nbgrader --overwrite
jupyter nbextension enable --user --py nbgrader

echo "Installing the kernel"

ipython kernel install --name "cse204" --user

echo "Success"
