#include "cdict.h"

// Hash function for string keys
static unsigned long cdict_hash(const char *str) {
    unsigned long hash = 5381;
    int c;
    while ((c = *str++))
        hash = ((hash << 5) + hash) + c; // hash * 33 + c
    return hash;
}

// Create a new dictionary
CDict *cdict_create(size_t capacity) {
    CDict *dict = malloc(sizeof(CDict));
    if (dict) {
        dict->capacity = capacity;
        dict->size = 0;
        dict->buckets = calloc(capacity, sizeof(CDictEntry*));
        if (!dict->buckets) {
            free(dict);
            return NULL;
        }
    }
    return dict;
}

// Free the dictionary
void cdict_free(CDict *dict) {
    if (dict) {
        for (size_t i = 0; i < dict->capacity; i++) {
            CDictEntry *entry = dict->buckets[i];
            while (entry) {
                CDictEntry *next = entry->next;
                free(entry->key);
                free(entry);
                entry = next;
            }
        }
        free(dict->buckets);
        free(dict);
    }
}

// Insert or update an entry in the dictionary
bool cdict_insert(CDict *dict, const char *key, double value) {
    unsigned long index = cdict_hash(key) % dict->capacity;
    CDictEntry *entry = dict->buckets[index];
    while (entry) {
        if (strcmp(entry->key, key) == 0) {
            entry->value = value;
            return true;
        }
        entry = entry->next;
    }
    CDictEntry *new_entry = malloc(sizeof(CDictEntry));
    if (new_entry) {
        new_entry->key = strdup(key);
        new_entry->value = value;
        new_entry->next = dict->buckets[index];
        dict->buckets[index] = new_entry;
        dict->size++;
        return true;
    }
    return false;
}

// Find an entry in the dictionary
double cdict_find(const CDict *dict, const char *key, bool *found) {
    unsigned long index = cdict_hash(key) % dict->capacity;
    CDictEntry *entry = dict->buckets[index];
    while (entry) {
        if (strcmp(entry->key, key) == 0) {
            *found = true;
            return entry->value;
        }
        entry = entry->next;
    }
    *found = false;
    return 0.0;
}

// Delete an entry from the dictionary
bool cdict_delete(CDict *dict, const char *key) {
    unsigned long index = cdict_hash(key) % dict->capacity;
    CDictEntry **ptr = &dict->buckets[index];
    while (*ptr) {
        CDictEntry *entry = *ptr;
        if (strcmp(entry->key, key) == 0) {
            *ptr = entry->next;
            free(entry->key);
            free(entry);
            dict->size--;
            return true;
        }
        ptr = &entry->next;
    }
    return false;
}
