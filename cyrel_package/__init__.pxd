# from . cimport module
# Fails, "relative cimport beyond main package"

from cyrel_package cimport module
# Works

from cyrel_package cimport subpackage
