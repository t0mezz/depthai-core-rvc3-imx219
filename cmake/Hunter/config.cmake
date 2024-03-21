# hunter_config(
#     nlohmann_json
#     VERSION "3.9.1"
#     URL "https://github.com/nlohmann/json/archive/v3.9.1.tar.gz"
#     SHA1 "f8a20a7e19227906d77de0ede97468fbcfea03e7"
# )
hunter_config(
    nlohmann_json
    VERSION "3.9.1"
)

hunter_config(
    XLink
    VERSION "luxonis-2021.4.2-xlink-linkid-race-fix"
    URL "https://github.com/luxonis/XLink/archive/1329ef4125cfdd3b8c236316f39cce9f4b94da2f.tar.gz"
    SHA1 "58cdfe63d767edd89e0586a81eee8c8e74a76cb3"
    CMAKE_ARGS
        XLINK_ENABLE_LIBUSB=${DEPTHAI_ENABLE_LIBUSB}
)

hunter_config(
    BZip2
    VERSION "1.0.8-p0"
)

hunter_config(
    spdlog
    VERSION "1.8.2"
    URL "https://github.com/gabime/spdlog/archive/v1.8.2.tar.gz"
    SHA1 "4437f350ca7fa89a0cd8faca1198afb36823f775"
    CMAKE_ARGS
        SPDLOG_BUILD_EXAMPLE=OFF
        SPDLOG_FMT_EXTERNAL=OFF
        CMAKE_CXX_VISIBILITY_PRESET=hidden
        CMAKE_C_VISIBILITY_PRESET=hidden
)

# libarchive, luxonis fork
hunter_config(
    libarchive-luxonis
    VERSION "hunter-3.5.2"
    URL "https://github.com/luxonis/libarchive/archive/45baa3a3e57104519e1165bcd5ac29c3bd8c9f3a.tar.gz"
    SHA1 "ca5cd0f1c31b9c187d7119cb1aa7467f8c231d29"
    CMAKE_ARGS
        ENABLE_ACL=OFF
        ENABLE_BZip2=OFF
        ENABLE_CAT=OFF
        ENABLE_CAT_SHARED=OFF
        ENABLE_CNG=OFF
        ENABLE_COVERAGE=OFF
        ENABLE_CPIO=OFF
        ENABLE_CPIO_SHARED=OFF
        ENABLE_EXPAT=OFF
        ENABLE_ICONV=OFF
        ENABLE_INSTALL=ON
        ENABLE_LIBB2=OFF
        ENABLE_LIBXML2=OFF
        ENABLE_LZ4=OFF
        ENABLE_LZMA=ON
        ENABLE_LZO=OFF
        ENABLE_LibGCC=OFF
        ENABLE_MBEDTLS=OFF
        ENABLE_NETTLE=OFF
        ENABLE_OPENSSL=OFF
        ENABLE_PCREPOSIX=OFF
        ENABLE_SAFESEH=AUTO
        ENABLE_TAR=OFF
        ENABLE_TAR_SHARED=OFF
        ENABLE_TEST=OFF
        ENABLE_WERROR=OFF
        ENABLE_XATTR=OFF
        ENABLE_ZLIB=OFF
        ENABLE_ZSTD=OFF
)

# Luxonis FP16 fork which doesn't use git cloning for its dependencies
hunter_config(
    FP16
    VERSION "luxonis-0.0.0"
    URL "https://github.com/luxonis/FP16/archive/c911175d2717e562976e606c6e5f799bf40cf94e.tar.gz"
    SHA1 "40e9723c87c2fe21781132c0f2f8b90338500e32"
    CMAKE_ARGS
        FP16_BUILD_BENCHMARKS=OFF
        FP16_BUILD_TESTS=OFF
)

if(NOT EMSCRIPTEN)
    # Backward - Stacktrace printer
    hunter_config(
      Backward
      VERSION "1.6"
      URL "https://github.com/bombela/backward-cpp/archive/refs/tags/v1.6.tar.gz"
      SHA1 "4ecb711eabfd15bc88ff9dd9342907fc5da46b62"
      CMAKE_ARGS
          BACKWARD_TESTS=OFF
    )
endif()

# libnop - Serialization
hunter_config(
    libnop
    VERSION "1.0-ec8f75a"
    URL "https://github.com/luxonis/libnop/archive/ab842f51dc2eb13916dc98417c2186b78320ed10.tar.gz"
    SHA1 "32f40f084615ba7940ce9d29f05f3294371aabeb"
)

# Specific Catch2 version
hunter_config(
    Catch2
    VERSION "3.4.0"
    URL "https://github.com/catchorg/Catch2/archive/refs/tags/v3.4.0.tar.gz"
    SHA1 "4c308576c856a43dc88949a8f64ef90ebf94ae1b"
)

# ZLib - Luxonis fix for alias on imported target for old CMake versions
hunter_config(
    ZLIB
    VERSION "1.2.11-p2"
    URL "https://github.com/luxonis/zlib/archive/refs/tags/v1.2.11-p2.tar.gz"
    SHA1 "fb8b6486183b13a86040f793a939b128f6d27095"
)

# TMP, could be read from XLink
# libusb without udev
hunter_config(
    libusb-luxonis
    VERSION "1.0.24-cmake"
    URL "https://github.com/luxonis/libusb/archive/b7e4548958325b18feb73977163ad44398099534.tar.gz"
    SHA1 "2d79573d57628fe56d2868d2f6ce756d40906cf4"
    CMAKE_ARGS
        WITH_UDEV=OFF
        # Build shared libs by default to not cause licensing issues
        BUILD_SHARED_LIBS=ON
)

# cpp-httplib
hunter_config(
    httplib
    VERSION "0.11.2"
    URL "https://github.com/luxonis/cpp-httplib/archive/3ba99c06f655a52e701c9a7ae5dc48850582d95b.tar.gz"
    SHA1 "84ddd5d58a210b6203c50760d2ebde75b0ff6376"
    CMAKE_ARGS
        HTTPLIB_USE_OPENSSL_IF_AVAILABLE=OFF
        HTTPLIB_USE_BROTLI_IF_AVAILABLE=OFF
)

# Pybind11 2.11.0-smart_holder
hunter_config(
    pybind11
    VERSION "2.11.0-smart_holder"
    URL "https://github.com/pybind/pybind11/archive/10283c2ef44a9100bc88d066a4972c4f51ded2b0.tar.gz"
    SHA1 "0da09bdd6987a33feb800e4b7f129df5c9aa5aed"
)

# # Pybind11 2.9.2-smart_holder
# hunter_config(
#     pybind11
#     VERSION "2.9.2-smart_holder"
#     URL "https://github.com/pybind/pybind11/archive/9fa714f524fdbaf8e81c1a1b1637c547fed4e18f.tar.gz"
#     SHA1 "0cdb8fe12d33bac220b58aa85b219de02716f537"
# )

