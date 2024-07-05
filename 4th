4.Take an example subnet graph with weights indicating delay between nodes. Now obtain Routing table art each node using distance vector routing algorithm 

AIM: Take an example subnet graph with weights indicating delay between nodes. Now obtain Routing table art each node using distance vector routing algorithm

THEORY: 

The Distance Vector Routing algorithm is a dynamic routing protocol used in packet-switched networks to calculate the shortest path between nodes. Each router maintains a distance vector table that contains the distance to every other node in the network and the next hop router to reach that destination. The algorithm works by periodically exchanging distance vectors with neighboring routers. When a router receives a distance vector from a neighbor, it updates its own table if a shorter path is found via that neighbor. This process continues iteratively until all routers have the shortest path information for the entire network. Key properties include simplicity, distributed operation, and convergence towards the optimal path, but it can suffer from slow convergence and the "count to infinity" problem in the presence of network changes.

PROGRAM:

#include<stdio.h> 

struct node {    

 unsigned dist[20]; unsigned from[20]; 

}

rt[10]; 

int main() {    

 int costmat[20][20];

int nodes,i,j,k,count=0;     

printf("\nEnter the number of nodes : ");    

 scanf("%d",&nodes);//Enter the nodes    

 printf("\nEnter the cost matrix :\n");     

for(i=1;i<=nodes;i++) 

    { 

        for(j=1;j<=nodes;j++) { 

scanf("%d",&costmat[i][j]);             

costmat[i][i]=0;             

rt[i].dist[j]=costmat[i][j];

 rt[i].from[j]=j; 

  }     }     

do{

count=0; 

     for(i=1;i<=nodes;i++) 

     for(j=1;j<=nodes;j++)               

     for(k=1;k<=nodes;k++)                 

     if(rt[i].dist[j]>costmat[i][k]+rt[k].dist[j]){

              rt[i].dist[j]=rt[i].dist[k]+rt[k].dist[j];                    

                   rt[i].from[j]=k;                    

                     count++; } 

    }

   while(count!=0);     

   for(i=1;i<=nodes;i++){ 

          printf("\n\n For router %d\n",i);

          for(j=1;j<=nodes;j++) { 

                printf("\t\nnode %d via %d Distance %d ",j,rt[i].from[j],rt[i].dist[j]); 

            }     }    

 printf("\n\n"); 

} 

OUTPUT:

