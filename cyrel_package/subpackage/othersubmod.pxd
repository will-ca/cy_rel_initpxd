import cython

from . cimport submodule
# Works - Imports from current package directory.

@cython.locals(x=submodule.submodule_cls, y=cython.int)
cpdef use_local_pxd()
