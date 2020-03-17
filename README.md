Test case for https://github.com/cython/cython/issues/3442.

```sh
$ find -name '*.c' -delete -o -name '*.html' -delete -o -name '*.so' -delete
$ python3 setup.py build_ext -f --inplace
$ cythonize -aif cyrel_file.py
```

---

In `__init__.pxd` in a package, using `from . cimport modulename` attempts to find `modulename.pxd` in the parent directory of the package.

Using `from . import modulename` in basic Python attempts to find `modulename.*` within the directory of the package itself, as does using `from . cimport modulename` in all `*.pxd` files *except* for `__init__.pxd` in packages.

Using `from .packagename cimport modulename` in `__init__.pxd` doesn't work around this, because this (correctly) attempts to find `packagename` inside the package itself.

Because of this, there should not be any functional code out there that depends on the relative `cimport` being based on the parent directory, meaning that it should be possible to switch it to the package directory, in line with Python behaviour, without breaking compatibility.

---

Related: https://github.com/cython/cython/issues/3270

The classes actually can be exposed at the package scope, I think.
