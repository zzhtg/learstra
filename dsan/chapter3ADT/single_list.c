#include <stdio.h>
#include <stdlib.h>
#include "single_list.h"

List MakeEmpty(List list)
{
    list = malloc(sizeof(Node));
    list->next = NULL;
    list->element = 0;

    return list;
}

int IsEmpty(List list)
{
    return list->next == NULL;
}

int IsLast(Position position, List list)
{
    return position->next == NULL;
}

void PrintList(List list)
{
    list = list->next;
    while (list != NULL){
        printf("%d\t", list->element);
        list = list->next;
    }
    printf("\nover list\n");
}

Position Find(ElementType x, List list)
{
    Position position;

    position = list->next;
    while (position->next != NULL && position->element != x)
        position = position->next;

    return position;
}

Position FindPrevious(ElementType x, List list)
{
    Position position;

    position = list;
    while (position->next != NULL && position->next->element != x)
        position = position->next;

    return position;
}

void Delete(ElementType x, List list)
{
    Position position, temp_cell;
    
    position = FindPrevious(x, list);
    if (!IsLast(position, list)) {
        temp_cell = position->next;
        position = temp_cell->next;
        free(temp_cell);
    }
}

void Insert(ElementType x, List list, Position position)
{
    Position temp_cell;

    temp_cell = malloc(sizeof(Node));
    if (temp_cell == NULL) {
        printf("Fatal Error: out of space");
        exit(0);
    }
    temp_cell->element = x;
    temp_cell->next = position->next;
    position->next = temp_cell;
}

void DeleteList(List list)
{
    Position position, temp_position;
    
    position = list->next;
    list->next = NULL;
    while (position != NULL) {
        temp_position = position->next;
        free(position);
        position = temp_position;
    }
}

Position Header(List list)
{
    return list;
}

Position First(List list)
{
    return list->next;
}

Position Advance(Position position)
{
    return position->next;
}

int main()
{
    List list;
    ElementType x;
    int c;
    Position position;

    list = MakeEmpty(list);
    position = list;
    while((c = getchar()) != 'q'){
        Insert(c, list, position);
        position = position->next;
    }
    PrintList(list);
    DeleteList(list);
    PrintList(list);

    return 0;
}