#include <iostream>
#include <string>
#include <vector>
#include <list>
#include <queue>
#include <stack>

using namespace std;
struct Node{
    int data;
    Node* next;
    Node* previous;
};
int main(){
    
    
    
    queue<int>q1;
    queue<int>q2;
    q1.push(1);q1.push(2);q1.push(3);q1.push(4);q1.push(5);q1.push(6);
    int n; 
    cin >> n;
    int s = q1.size();
    for(int i = 0;i<n-1;i++){
        
        q2.push(q1.front()); q1.pop();
    }
    q1.pop();
    // vector <int> v;
    // v.push_back(1);
    // v.push_back(2);
    // v.push_back(3);
    // v.push_back(4);
    // vector<int>::iterator i = v.begin();
    // vector<int>::iterator e = v.end();
    // while(i>e){
    //     cout << *i;
    //     i++;
    // }
    // list<int>l;
    
}


















// struct Node
// {
//   int data;
//   Node *next;
// };
// int n = 0;
// Node *head = NULL;
// Node *back = NULL;
// bool
// isEmpty ()
// {
//   return head == NULL;
// }

// int
// size ()
// {
//   return n;
// }

// void
// enQueue (int data)
// {
//   Node *temp = new Node ();
//   temp->data = data;
//   temp->next = NULL;
//   if (!isEmpty ())
//     {
//       back->next = temp;
//       back = back->next;
//       n++;
//     }
//   else
//     {
//       head = back = temp;
//     }
// }
// int getFront(){
//     if(!isEmpty()){
//         head->data;
//     }else {
//         return -1;
//     }
// }
// int deQueue(){
//     if(!isEmpty()){
//         int d = head->data;
//     Node* t = head;
//     head = head->next;
//     delete t;
//     t = NULL;
//     return d;
//     }else {
//         return -1;
//     }
// }
// int 
// main ()
// {
    
//     int x;
//     while(1){
//         cout<<"enter no: (-1 to exit)";cin >> x;
//         if(x == -1)
//             break;
//         enQueue(x);
//     }
//     cout<<"end" <<endl;
//     while(!isEmpty()){
//         cout << deQueue();
//     }
// return 0;
// }



















// const int n = 10;
// int q[n];
// int f = -1, b = -1;
// // queue
// bool isEmpty(){
//     return f == b;
// }
// bool isFull(){
//     return b == n;
// }
// int size(){
//     return b-f+1;
// }
// void enQueue(int data){
//     if(isFull()) return; 
//     else if(f == -1){
//         f = b = 0;
//         q[0]=data;
//     }else{
//         q[++b]=data;

//     }
// }
// int deQueue(){
//     if(isEmpty()) return -1;
//     else{
//         return q[f++];
//     }
// }
// int getFront(){
//     if(isEmpty()) return -1;
//     else return q[f];
// }

// int main()
// {
//   enQueue(1);enQueue(2);enQueue(3);enQueue(4);
//   cout << size()<<endl;
//   cout << getFront() << endl;
// //   deQueue();
//   cout <<deQueue()<<endl;
// }