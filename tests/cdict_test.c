#include "cdict_test.h"
#include "test_utils.h"
#include "../src/cdict.h"
#include <pthread.h>

// Test functions for CDict
bool test_insert_find() {
    CDict *dict = cdict_create(10);
    bool found, result = true;

    // Test insertions
    result &= assert_true(cdict_insert(dict, "alpha", 1.0), "Insert alpha failed");
    result &= assert_true(cdict_insert(dict, "beta", 2.0), "Insert beta failed");

    // Test find
    result &= assert_true(cdict_find(dict, "alpha", &found) == 1.0 && found, "Find alpha failed");
    result &= assert_true(cdict_find(dict, "beta", &found) == 2.0 && found, "Find beta failed");
    result &= assert_true(cdict_find(dict, "gamma", &found) == 0.0 && !found, "Incorrectly found gamma");

    cdict_free(dict);
    return result;
}

bool test_update() {
    CDict *dict = cdict_create(10);
    bool found, result = true;

    // Test update
    cdict_insert(dict, "alpha", 1.0);
    cdict_insert(dict, "alpha", 10.0);
    result &= assert_true(cdict_find(dict, "alpha", &found) == 10.0 && found, "Update alpha failed");

    cdict_free(dict);
    return result;
}

bool test_delete() {
    CDict *dict = cdict_create(10);
    bool found, result = true;

    // Test delete
    cdict_insert(dict, "alpha", 1.0);
    result &= assert_true(cdict_delete(dict, "alpha"), "Delete alpha failed");
    result &= assert_true(cdict_find(dict, "alpha", &found) == 0.0 && !found, "Alpha incorrectly found after delete");

    cdict_free(dict);
    return result;
}

bool test_high_load() {
    CDict *dict = cdict_create(10000);  // Large capacity for high load
    bool result = true;

    // Insert a large number of elements
    for (int i = 0; i < 10000; i++) {
        char key[20];
        sprintf(key, "key%d", i);
        result &= assert_true(cdict_insert(dict, key, (double)i), "Insert failed at high load");
    }

    // Verify all elements
    bool found;
    for (int i = 0; i < 10000; i++) {
        char key[20];
        sprintf(key, "key%d", i);
        double value = cdict_find(dict, key, &found);
        result &= assert_true(found && value == (double)i, "Find failed at high load");
    }

    cdict_free(dict);
    return result;
}


void run_cdict_tests() {
    printf("Running CDict tests...\n");
    TestCase tests[] = {
        {"Insert and Find Test", test_insert_find},
        {"Update Test", test_update},
        {"Delete Test", test_delete}
    };
    run_tests(tests, sizeof(tests) / sizeof(TestCase));
}


void* thread_insert(void* arg) {
    CDict *dict = (CDict*) arg;
    for (int i = 0; i < 5000; i++) {
        char key[20];
        sprintf(key, "thread%d", i);
        cdict_insert(dict, key, i);
    }
    return NULL;
}

bool test_concurrency() {
    CDict *dict = cdict_create(10000);
    pthread_t t1, t2;

    // Create threads that perform operations
    pthread_create(&t1, NULL, thread_insert, dict);
    pthread_create(&t2, NULL, thread_insert, dict);

    // Wait for threads to finish
    pthread_join(t1, NULL);
    pthread_join(t2, NULL);

    // Verify results
    // This should include checks for the integrity of the dictionary's structure
    // and that no data has been lost or corrupted

    cdict_free(dict);
    return true;  // Modify based on actual verifications
}

