#include <stdio.h>
#include <string.h>

#define MAX_STATION (10)

typedef struct TAG_STATION {
  char name[256];
  struct TAG_STATION *transitions[MAX_STATION];
} STATION;

void init_station(STATION* station, char* name){
  int i;
  for (i=0; i<MAX_STATION; i++){
    station -> transitions[i] = NULL; // not connected on each station.
  }
  strncpy(station -> name, name, sizeof(station->name) - 1);
  station -> name[sizeof(station->name)-1] = '\0';
}

void add_station(STATION* station, STATION* transition){
  int i;
  // search location in transitions
  for (i=0; i<MAX_STATION; i++){
    if (station->transitions[i] == NULL){
      break;
    }
    // already registered
    if (station->transitions[i] == transition){
      return;
    }
  }
  // max limited
  if (i == MAX_STATION){
    return;
  }
  // register
  station->transitions[i] = transition;
}

void print_station(STATION* station){
  int i;
  printf("%s:", station->name);
  for (i=0; i<MAX_STATION; i++){
    if (station->transitions[i]==NULL){
      break;
    }
    printf("->%s  ", station->transitions[i]->name);
  }
  printf("\n");
}

int main(void){
  int i;
  STATION station[6];
  init_station(&station[0], "äôëq");
  init_station(&station[1], "ì°ëÚ");
  init_station(&station[2], "â°ïl");
  init_station(&station[3], "â°ê{âÍ");
  init_station(&station[4], "äùÉñçË");
  init_station(&station[5], "ìåãû");

  // 
  add_station(&station[0], &station[3]);
  add_station(&station[0], &station[1]);
  add_station(&station[0], &station[2]);
  // 
  add_station(&station[1], &station[0]);
  add_station(&station[1], &station[4]);
  add_station(&station[1], &station[2]);
  // 
  add_station(&station[2], &station[1]);
  add_station(&station[2], &station[0]);
  add_station(&station[2], &station[5]);
  //
  add_station(&station[3], &station[0]);
  add_station(&station[4], &station[1]);
  add_station(&station[5], &station[2]);

  // print
  for (i=0; i<6; i++){
    print_station(&station[i]);
  }
  return 0;
}
