#include "test_utils.h"

// Runs all tests and reports the outcomes
void run_tests(TestCase *tests, int num_tests) {
    TestResult result = {0, 0};
    printf("Starting test suite...\n");
    for (int i = 0; i < num_tests; i++) {
        printf("Running test: %s - ", tests[i].test_name);
        if (tests[i].test_func()) {
            printf("PASSED\n");
            result.passed++;
        } else {
            printf("FAILED\n");
            result.failed++;
        }
    }
    printf("\nTest summary: %d passed, %d failed.\n", result.passed, result.failed);
}

// Asserts the truth of a condition and prints a message if false
bool assert_true(bool condition, const char *message) {
    if (!condition) {
        printf("Assertion failed: %s\n", message);
    }
    return condition;
}
