# from . cimport submodule
# Fails, "'cyrel_package/submodule.pxd' not found" — Attempts to relative to parent package directory instead of current package directory.

# from .subpackage cimport submodule
# Fails, "'cyrel_package/subpackage/subpackage/submodule.pxd' not found" — Attempts to (correctly) import relative to current package directory.

from cyrel_package.subpackage cimport submodule
# Works.

from cyrel_package.subpackage.submodule cimport submodule_cls
