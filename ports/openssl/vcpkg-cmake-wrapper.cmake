_find_package(${ARGS})
if(OPENSSL_FOUND)
    list(APPEND OPENSSL_LIBRARIES "dl")
    if(TARGET OpenSSL::Crypto)
        set_property(TARGET OpenSSL::Crypto APPEND PROPERTY INTERFACE_LINK_LIBRARIES "dl")
    endif()
endif()
