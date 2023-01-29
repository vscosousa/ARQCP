#ifndef FILL_STUDENT_H
#define FILL_STUDENT_H

typedef struct {
	short number;					//0-1
	char age;						//2
	int grades[5];					//4-23
	char name[60];					//24-83
	char address[100];				//84-183
} Student;

void fill_student(Student *s, char age, short number, char *name, char *address);

#endif
