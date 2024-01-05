# -------------------------------------
# Copyright (c) 2023, Dror Kabely
# -------------------------------------
#

load("@pip//:requirements.bzl", "all_requirements", "requirement")

def ipython(name, deps, **kwargs):
    native.py_binary(
        name = name,
        srcs = ["//rules:shell.py"],
        deps = deps + all_requirements,
        python_version = "PY3",
        **kwargs
    )

def jupyter(name, deps, **kwargs):
    native.py_binary(
        name = name,
        srcs = ["//rules:jupyter.py"],
        deps = deps + all_requirements ,
        python_version = "PY3",
        **kwargs
    )