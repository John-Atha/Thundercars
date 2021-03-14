from setuptools import setup
from setuptools.command.test import test as TestCommand
import sys

class PyTest(TestCommand):

    def finalize_options(self):
        TestCommand.finalize_options(self)
        self.test_args = [
            '--doctest-modules',
            '--verbose',
            './test',
        ]
        self.test_suite = True

    def run_tests(self):
        import pytest
        sys.exit(pytest.main(self.test_args))


setup (
    name='EVCharge35',
    author='Thundercars',
    author_email='thundercars-team@ourmails.com',
    version='1.0',
    install_requires=[
        'Click',
        'requests',
        'DateTime',
        'regex',
        'pyjwt',
    ],
    tests_require=[
        'PyTest',
        'DateTime',
        'pyjwt',
        'Click'
    ],
    cmdclass={'test': PyTest},
    test_suite="test",
    entry_points={
        'console_scripts': ['EVCharge35 = src.main:cli'],
    },
)
