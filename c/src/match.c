#include <stdio.h>
#include <stdlib.h>

typedef struct _stack stack;
struct _stack {
    stack *next;
    int value;
};

stack* init();
stack* create(stack*, int);
void push(stack**, int);
int pop(stack**);
void showstack(stack*);
int last(stack*);
int empty(stack*);

int analyze(char*);

int main(void) {
    stack* head = NULL;
    char string[25];
    int resultado;

    printf ("Insira uma expressão: ");
    scanf("%[^\n]s", string);
    resultado = analyze(string);

    if (resultado == -1) {
        printf ("Expressão correta :)");   
    } else {
        printf ("Expressão: %s\n", string);
        printf ("Erro: .....");
        while (resultado-- > 0) printf (".");
        printf ("^\n");
    }

    return 0;
}

stack* init() {
    return create(NULL, -1);
}

stack* create(stack* next, int value) {
    stack* new = (stack *) malloc (sizeof(stack));
    new->next = next;
    new->value = value;

    return new;
}

void push(stack** s, int value) {
    stack* new = create(*s, value);
    *s = new;
}

int pop(stack** s) {
    if ((*s)->next != NULL) {
        stack* newhead = (*s)->next;
        stack* tofree = *s;
        int value = (*s)->value;

        *s = newhead;
        free(tofree);
        return value;
    }

    return -1;
}

void showstack(stack* s) {
    stack* aux;
    aux = s;

    printf ("[");
    while (aux->next != NULL) {
        printf("%d", aux->value);
        if (!last(aux->next)) {
            printf(",");
        }
        aux = aux->next;
    }

    printf("]");
}

int last(stack* s) {
    return s->next == NULL;
}

int empty(stack* s) {
    return s->next == NULL;
}

int analyze(char* string) {
    int i = 0;
    stack* head = init();

    while (string[i] != '\0') {
        /**/ if (string[i] == '(') { push(&head, '('); }
        else if (string[i] == '[') { push(&head, '['); }
        else if (string[i] == '{') { push(&head, '{'); }
        else if (string[i] == ')') {
            if (pop(&head) != '(') { return i; }
        } else if (string[i] == ']') {
            if (pop(&head) != '[') { return i; }
        } else if (string[i] == '}') {
            if (pop(&head) != '{') { return i; }
        }

        i++;
    }

    if (!empty(head)) {
        return i;
    }

    return -1;
}
