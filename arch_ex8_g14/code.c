

int main() {
    int SIZE = 8;
    int array[SIZE][SIZE];
    int i, j, sum = 0;

    for (i = 0; i < SIZE; i++){
        for(j = 0; j < SIZE; j++){
            array[i][j] = i + j + 1;
        }
    }

    for(i = 0; i < SIZE; i++){
        for(j = 0; j < SIZE; j++){
            sum += array[i][j];
        }
    }

    return 0;
}