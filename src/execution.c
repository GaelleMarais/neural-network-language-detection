#include <stdio.h>
#include <ctype.h>
#include "./include/fann.h"
#include "./include/floatfann.h"


void calculate_frequencies(FILE *file, float* frequencies){
    char alphabet[26] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
                         'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v',
                         'w', 'x', 'y', 'z'};
    int count[26] = {0};
    int size = 0;

    char buff = fgetc(file);
    while(buff != EOF){
        int i;

        for(i = 0; i < 26; i++)
            if(tolower(buff) == alphabet[i])
                count[i]++;
        

        size++;
        buff = fgetc(file);
    }

    for(int i = 0; i < 26; i++)
        frequencies[i] = ((float)count[i]) / ((float)size);

    for(int i = 0; i < 26; i++)
        printf("%c : %f\n", alphabet[i], frequencies[i]);

}

void print_result(float* output){
    printf("Anglais -> %f\n", output[0]);
    printf("Français -> %f\n", output[1]);
    printf("Allemand -> %f\n", output[2]);
    printf("Espagnol -> %f\n", output[3]);
    printf("Italien -> %f\n", output[4]);
    printf("Portuguais -> %f\n", output[5]);
}

int main(int argc, char *argv[]){

    if(argc < 2){
        printf("Missing 1 argument\n");
        return 1;
    }

    FILE *file = fopen(argv[1], "r");
    if(!file){
        printf("Unable to open file %s\n", argv[1]);
        return 1;
    }

    float frequencies[26];
    calculate_frequencies(file, frequencies);

    struct fann *ann = fann_create_from_file("language.net");
    float *output = fann_run(ann, frequencies);

    print_result(output);

    fann_destroy(ann);
    fclose(file);

    return 0;
}

