#ifndef TEST_UTILS_H
#define TEST_UTILS_H

#include <stdio.h>
#include <stdbool.h>

typedef struct {
    const char *test_name;
    bool (*test_func)();
} TestCase;

typedef struct {
    int passed;
    int failed;
} TestResult;

// Function prototypes
void run_tests(TestCase *tests, int num_tests);
bool assert_true(bool condition, const char *message);

#endif /* TEST_UTILS_H */
