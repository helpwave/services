from setuptools import setup, find_packages

setup(
    name="django_grpc",
    package_dir={"": "src"},
    packages=find_packages(where="src"),
    install_requires=[
        "django",
        "protobuf",
        "grpcio",
        "grpcio-tools",
    ],
)