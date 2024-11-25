#include <stdio.h>
#include "../tests/cdict_test.h"

int main() {
    printf("Starting CDict tests from main application...\n");
    run_cdict_tests();  // Run all CDict tests
    printf("CDict testing completed.\n");
    return 0;
}
