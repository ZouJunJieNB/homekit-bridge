# directory
set(PLATFORM_DIR ${TOP_DIR}/platform)
set(PLATFORM_INC_DIR ${PLATFORM_DIR}/include)
set(PLATFORM_COMMON_DIR ${PLATFORM_DIR}/common)
set(PLATFORM_COMMON_SRC_DIR ${PLATFORM_COMMON_DIR}/src)
set(PLATFORM_COMMON_POSIX_DIR ${PLATFORM_DIR}/posix)
set(PLATFORM_COMMON_POSIX_SRC_DIR ${PLATFORM_COMMON_POSIX_DIR}/src)
set(PLATFORM_MBEDTLS_DIR ${PLATFORM_DIR}/mbedtls)
set(PLATFORM_MBEDTLS_SRC_DIR ${PLATFORM_MBEDTLS_DIR}/src)
set(PLATFORM_OPENSSL_DIR ${PLATFORM_DIR}/openssl)
set(PLATFORM_OPENSSL_SRC_DIR ${PLATFORM_OPENSSL_DIR}/src)
set(PLATFORM_LINUX_DIR ${PLATFORM_DIR}/linux)
set(PLATFORM_LINUX_SRC_DIR ${PLATFORM_LINUX_DIR}/src)
set(PLATFORM_ESP_DIR ${PLATFORM_DIR}/esp/components/platform)
set(PLATFORM_ESP_SRC_DIR ${PLATFORM_ESP_DIR}/src)

# collect platform headers
set(PLATFORM_HEADERS
    ${PLATFORM_INC_DIR}/pal/board.h
    ${PLATFORM_INC_DIR}/pal/memory.h
    ${PLATFORM_INC_DIR}/pal/hap.h
    ${PLATFORM_INC_DIR}/pal/net.h
    ${PLATFORM_INC_DIR}/pal/udp.h
    ${PLATFORM_INC_DIR}/pal/cipher.h
    ${PLATFORM_INC_DIR}/pal/md5.h
    ${PLATFORM_INC_DIR}/pal/socket.h
)

# collect platform Linux sources
set(PLATFORM_LINUX_SRCS
    ${PLATFORM_COMMON_SRC_DIR}/hap.c
    ${PLATFORM_COMMON_POSIX_SRC_DIR}/udp.c
    ${PLATFORM_COMMON_POSIX_SRC_DIR}/socket.c
    ${PLATFORM_OPENSSL_SRC_DIR}/cipher.c
    ${PLATFORM_OPENSSL_SRC_DIR}/md5.c
    ${PLATFORM_LINUX_SRC_DIR}/board.c
    ${PLATFORM_LINUX_SRC_DIR}/memory.c
    ${PLATFORM_LINUX_SRC_DIR}/main.c
)

# collect platform ESP sources
set(PLATFORM_ESP_SRCS
    ${PLATFORM_COMMON_SRC_DIR}/hap.c
    ${PLATFORM_COMMON_POSIX_SRC_DIR}/udp.c
    ${PLATFORM_MBEDTLS_SRC_DIR}/cipher.c
    ${PLATFORM_MBEDTLS_SRC_DIR}/md5.c
    ${PLATFORM_ESP_SRC_DIR}/board.c
    ${PLATFORM_ESP_SRC_DIR}/memory.c
)
