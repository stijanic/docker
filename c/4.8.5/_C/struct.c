#include <stdio.h>
#include <string.h>

typedef struct _Book {
	char title[50];
	char author[50];
	char subject[100];
	int book_id;
} Book;

int main() {
	Book book_one; /* Declare book_one of type "Book" */
	struct _Book book_two; /* Declare book_two of type "struct _Book" */

	/* book 1 specification */
	strcpy(book_one.title, "C Programming");
	strcpy(book_one.author, "Pera Peric");
	strcpy(book_one.subject, "C Programming Tutorial");
	book_one.book_id = 6495407;

	/* book 2 specification */
	strcpy(book_two.title, "Telecom Billing");
	strcpy(book_two.author, "Mika Mikic");
	strcpy(book_two.subject, "Telecom Billing Tutorial");
	book_two.book_id = 6495700;

	/* print Book1 info */
	printf("Book 1 title : %s\n", book_one.title);
	printf("Book 1 author : %s\n", book_one.author);
	printf("Book 1 subject : %s\n", book_one.subject);
	printf("Book 1 book_id : %d\n", book_one.book_id);

	/* print Book2 info */
	printf("Book 2 title : %s\n", book_two.title);
	printf("Book 2 author : %s\n", book_two.author);
	printf("Book 2 subject : %s\n", book_two.subject);
	printf("Book 2 book_id : %d\n", book_two.book_id);

	return (0);
}
