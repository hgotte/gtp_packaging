# python setup.py build sdist
# python setup.py bdist_wheel
# pip install ./dist/gtp_packaging-0.0.0-py3-none-any.whl
# pip install --editable ./
# if dedicated numpy version is needed: install_requires=["numpy==2.3.3"]
from setuptools import setup, find_packages

setup(
    name="gtp_packaging-demo",
    version="0.0.0",
    packages=find_packages(),
    # specify the package metadata
    author="Heinz-Georg Otte",
    author_email="hg.otte@outlook.de",
    description="A sample Python package",
    license="MIT",
    install_requires=[
        "numpy", "fastapi",
    ],
    )
