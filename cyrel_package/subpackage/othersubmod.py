import cython

from . import submodule

def use_local_pxd():
	x = submodule.submodule_cls()
	y = x.a
