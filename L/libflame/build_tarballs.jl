name = "libflame"

include("common.jl")

script = libflame_script()

products = [
    LibraryProduct("libflame", :libflame),
]

# Build the tarballs
build_tarballs(ARGS, name, version, sources, script, platforms, products, dependencies;
               preferred_gcc_version=v"11", lock_microarchitecture=false, julia_compat="1.6")
