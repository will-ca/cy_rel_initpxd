import cython

cimport cyrel_package

# from cyrel_package.subpackage cimport submodule_cls as submodcls
# Fails, "Assignment to non-lvalue 'submodcls'"

@cython.locals(x=cyrel_package.subpackage.submodule_cls, y=cython.int)
cpdef use_exported_package_pxd()
# Works. Local variables are statically typed.

# @cython.locals(x=submodcls, y=cython.int)
# cpdef use_exported_package_pxd2()
