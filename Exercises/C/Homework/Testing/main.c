void triangle(int, int, int);
void backwardsTriangle(int, int, int);
void equilateralTriangle(int, int, int, int);
void christmasTree(int, int, int, int, int);

void main(void){
    christmasTree(1, 5, 3, 1, 2);
}

void triangle(int width, int height, int widthIncrement){
    for(int i = 0; i < height; i++){
        for(int j = 0; j < width; j++){
            printf("#");
        }
        printf("\n");
        width += widthIncrement;
    }
}

void backwardsTriangle(int width, int height, int widthIncrement){
    int finalWidth = width + (widthIncrement * (height - 1));
    for(int i = 0; i < height; i++){
        for(int j = 0; j < finalWidth - width; j++){
            printf(" ");
        }
        for(int j = 0; j < width; j++){
            printf("#");
        }
        printf("\n");
        width += widthIncrement;
    }
}

void equilateralTriangle(int halfWidth, int height, int halfWidthIncrement, int leadingSpaces){
    int halfFinalWidth = halfWidth + (halfWidthIncrement * (height - 1));
    
    for(int i = 0; i < height; i++){
        for(int j = 0; j < halfFinalWidth - halfWidth + leadingSpaces; j++){
            printf(" ");
        }
        for(int j = 0; j < halfWidth * 2; j++){
            printf("#");
        }
        printf("\n");
        halfWidth += halfWidthIncrement;
    }
}

void christmasTree(int halfWidth, int amount, int partHeight, int halfWidthIncrement, int partIncrement){
    int leadingSpaces;
    for(int partCounter = 0; partCounter < amount; partCounter++){
        leadingSpaces = (amount-partCounter-1)*2*partIncrement*halfWidthIncrement;
        equilateralTriangle(halfWidth, partHeight, halfWidthIncrement, leadingSpaces);
        partHeight += partIncrement;
        halfWidth += partIncrement;
    }
}
