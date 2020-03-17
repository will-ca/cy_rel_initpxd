import cython

import cyrel_package

from cyrel_package.subpackage import submodule_cls as submodcls

def use_exported_package_pxd():
	x = cyrel_package.subpackage.submodule_cls()
	y = x.a

# def use_exported_package_pxd2():
# 	x = submodcls()
# 	y = x.a
