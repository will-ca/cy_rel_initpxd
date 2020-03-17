from distutils.core import setup
from Cython.Build import cythonize

setup(
	ext_modules = cythonize("cyrel_package/**/*.py", compiler_directives={'language_level': 3, 'profile': True}, annotate=True)
)
