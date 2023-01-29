#include <stdio.h>
#include <string.h>
#include "fill_student.h"
#include "update_address.h"

int main(void){
	
	Student array[5];
	Student * s = array;
	
	char name[60] = "Vasco";
	char *ptrname = name;
	
	char address[100] = "Rua Dom Ximenez Belo Prémio Nobel da Paz, 155";
	char *ptraddress = address;
	
	short number = 122;
	char age = 19;
	fill_student(s, age, number, ptrname, ptraddress);
	printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n", s->name, s->age, s->number, s->address);
    s++;
    
    ptrname = "John";
    ptraddress = "Rua de Matosas";
	number = 124;
	age = 19;
	fill_student(s, age, number, ptrname, ptraddress);
	printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n", s->name, s->age, s->number, s->address);
    s++;
    
    ptrname = "Rafalel";
    ptraddress = "Rua do kebab";
	number = 125;
	age = 20;
	fill_student(s, age, number, ptrname, ptraddress);
	printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n", s->name, s->age, s->number, s->address);
    s++;
    
    ptrname = "Verónica";
    ptraddress = "Rua de wok";
	number = 126;
	age = 23;
	fill_student(s, age, number, ptrname, ptraddress);
	printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n", s->name, s->age, s->number, s->address);
    s++;
	
	ptrname = "Papa";
    ptraddress = "Rua de pizzeria";
	number = 127;
	age = 24;
	fill_student(s, age, number, ptrname, ptraddress);
	printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n", s->name, s->age, s->number, s->address);
    
    char new_address[100] = "Rua Atualizada, 199";
	char *ptr_new_address = new_address;
	update_address(s, ptr_new_address);
	printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n", s->name, s->age, s->number, s->address);
	
	int new_grades[5] = {20,15,14,15,12};
	int *ptr_new_grades = new_grades;
	update_grades(s, ptr_new_grades);
	printf("Nome: %s\nIdade: %d\nNumero: %d\nAddress: %s\n\n", s->name, s->age, s->number, s->address);
	
	int i;
    printf("Notas: ");
    for(i = 0; i < 5; i++){
        printf(" %d ", s->grades[i]);
    }
    printf("\n");
	return 0;
}
