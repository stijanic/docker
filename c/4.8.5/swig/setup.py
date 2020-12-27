from distutils.core import setup, Extension

factorial_module = Extension('_factorial',
    sources=['factorial_wrap.c', 'factorial.c'],
)
setup (name = 'factorial',
    version = '0.1',
    author = "SWIG Docs",
    description = """Simple swig factorial from docs""",
    ext_modules = [factorial_module],
    py_modules = ["factorial"],
)
