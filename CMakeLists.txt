cmake_minimum_required(VERSION 3.22)
project(ExpressionWhizz__ C)

set(CMAKE_C_STANDARD 11)

# Include the header files
include_directories(src tests)

# Add executable for the main application
add_executable(ExpressionWhizz__
        ./main.c
        src/cdict.c
        src/tokenize.c
        src/parse.c
        src/expr_tree.c
        src/expr_whizz.c
        tests/cdict_test.c  # Assuming cdict_test.c should be included in the main executable
        tests/test_utils.c
)

# Add executable for the tests
add_executable(CDictTests
        tests/cdict_test.c
        src/cdict.c
        tests/test_utils.c
)

target_include_directories(CDictTests PRIVATE src)
