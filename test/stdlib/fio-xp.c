#include <stdio.h>

int main()
{
    FILE* zdrava;
    int display;
 
    zdrava = fopen("zdrava.txt", "rt");
 
    // loop to extract every characters
    while (!feof(zdrava)) {
        
        // reading file
        display = fgetc(zdrava);
 
        // displaying every characters
        printf("%c", display);
    }
 
    // closes the file pointed by demo
    fclose(zdrava);
 
    return 0;
}