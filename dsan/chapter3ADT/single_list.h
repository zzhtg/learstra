#ifndef SINGLE_LIST_H
#define SINGLE_LIST_H

typedef int ElementType;
struct Nodes;
typedef struct Nodes Node;
typedef struct Nodes* List;
typedef struct Nodes* Position;

List MakeEmpty(List list);
int IsEmpty(List list);
int IsLast(Position position, List list);
Position Find(ElementType x, List list);
Position FindPrivous(ElementType x, List list);
void Delete(ElementType x, List list);
void Insert(ElementType x, List list, Position position);
void DeleteList(List list);
Position Header(List list);
Position First(List list);
Position Advance(Position position);
ElementType Retrieve(Position position);

#endif //SINGLE_LIST_H

struct Nodes{
    ElementType element;
    Position next;
};