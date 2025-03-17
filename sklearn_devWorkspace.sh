# Copy to .mysetup.sh in the root of the repository
# Usage: bash .mysetup.sh

uname -a

python3 -m pip install --upgrade pip
pip install numpy scipy cython meson-python ninja
pip install wheel
sudo apt-get install build-essential python3-dev python3-pip
pip install --editable . --verbose --no-build-isolation --config-settings editable-verbose=true

python -c "import sklearn; sklearn.show_versions()"
pytest -v sklearn/linear_model/tests/test_logistic.py::test_sparsify