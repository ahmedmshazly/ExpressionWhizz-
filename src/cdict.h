#ifndef CDICT_H
#define CDICT_H

#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

// Define the dictionary entry structure
typedef struct cdict_entry {
    char *key;
    double value;
    struct cdict_entry *next;
} CDictEntry;

// Define the dictionary structure
typedef struct {
    CDictEntry **buckets;
    size_t size;
    size_t capacity;
} CDict;

// Function declarations
CDict *cdict_create(size_t capacity);
void cdict_free(CDict *dict);
bool cdict_insert(CDict *dict, const char *key, double value);
double cdict_find(const CDict *dict, const char *key, bool *found);
bool cdict_delete(CDict *dict, const char *key);

#endif // CDICT_H
