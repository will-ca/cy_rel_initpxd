import cython

def submodule_func(a):
	return a*2

class submodule_cls:
	def __cinit__(self):
		self.a = 5
	def __init__(self):
		if not cython.compiled:
			submodule_cls.__cinit__(self)
