if (WITH_COVERAGE)
  if (CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    add_compile_options( -fprofile-instr-generate -fcoverage-mapping )
    link_libraries( -fprofile-instr-generate )
  else()
    add_compile_options( --coverage -g0 )
    link_libraries( --coverage )
  endif()
endif()
