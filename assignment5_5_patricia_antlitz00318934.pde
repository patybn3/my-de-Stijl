/* Assigment 5-5
Student ID: 00318934
Name: Patricia Antlitz
Professor Ethel Schuster
Introduction to Computer Science CIS-140
13 October 2020 

5. my-de-Stjil: Inspired by De Stijl artists such as Theo van Doesburg 
create your own de-Stijl design. Include your signature! 

The work I am submitting is my own in its entirety
*/

// code starts here.

// set the global variables for colors
int lightGray = color(230);
int darkBlue = color(0, 0, 90);
int darkYellow = color(245, 192, 2);
int red = color(170, 0, 0);
int black = color(0);
int orig = 0;

// call variable of type font
PFont font1;

// write a function with the setting for the program
void setup(){
  // make a screen sized 500px by  500px
  size(500, 600);
  // load selected font
  font1 = loadFont("OriyaMN-Bold-48.vlw");
}

// Create function draw to run commands
void draw() {
  
  // set up the screen background color to lightGray
  background(lightGray);
    
    // Local variables for coordinations
    int tall = height;
    int wide = width;
    int halfW = wide/2;
    int halfH = tall/2;
    int xLoc = wide/7;
    int yLoc = tall/10;
    int wide3 = 3*width/4;
    int tall3 = 3*height/4;
    
    // drawVertical creates a pattern of lines on the screen from the x axis
    drawVertical(black, orig, tall, 120);
    drawVertical(black, orig, tall, 170);
    drawVertical(black, orig, halfH - 40, 200);
    
    // drawHorizontal creates a pattern of lines from the y axis
    drawHorizontal(black, halfW+60, orig, 245);
    drawHorizontal(black, wide, orig, 205);
    
    // drawRect creates the colored rectangles on the screen
    drawRect(red, xLoc, yLoc, 120, 205);
    drawRect(red, wide3, tall3+20, 110, 127);
    drawRect(darkBlue, wide3 -65, yLoc, 105, 205);
    drawRect(darkBlue, xLoc, tall3+20, 170, 80);
    drawRect(darkYellow, wide/3, halfH + 5, 50, 165);
    drawRect(darkYellow, orig, orig, 70, 60);
    drawRect(darkYellow, halfW -10, tall3+20, 70, 80);
    drawRect(black, orig,  tall3+90, 70, 60);
    drawRect(black, halfW -5,  halfH - 30, 60, 30);
    drawRect(black, halfW +70, orig, 90, 30);
    
    // signature
    // select the color black
    fill(black);
    // select the font and size
    textFont(font1, 13);
    // add text and coordinates
    text("Patricia Antlitz", 383, 580);
    
}


/* drawVertical function calls for param "c" of type integer to be used
to determinate the color of the line, float y1 calls for the position of 
the first point of line on the y axis and float y2 calls for the position
of the second point of the line in the y axis. xSpace determinates the
amount of space between the lines*/

void drawVertical(int c, float y1, float y2, int xSpace){
  
// create local variable for the screen's width.
int wide = width;
// set local variable for the width of where the lines should start
int xloc = wide/7;

  /* for loop will iterate the commands. Set a variable of type integer
  as x1 which is equal to variable xloc, as long a variable x1 is less or
  equal to the width of the page, add xSpace value to x1 and draw a line using
  param "c" as the color for the stroke, add the for loop as point x1 and x2 
  of the line. */
  for(int x1 = xloc; x1 <= wide; x1 += xSpace) {
        // assign stoke color for the lines
        stroke(c);
        // add a thickness of 10px
        strokeWeight(10);
        // Create a line
        line(x1, y1, x1, y2);
   }
}


/* drawHorizontal function calls for param "c" of type integer to be used
to determinate the color of the line, float x1 calls for the position of 
the first point of line in the x axis and float x2 calls for the position
of the second point of the line in the x axis. ySpace determinates the
amount of space between the lines*/

void drawHorizontal(int c, float x1, float x2, int ySpace){

// create local variable for the screen's height.
int tall = height;
// set local variable for the height of the where the lines should start(50px)
int yloc = tall/10;

// add a thickness of 10
strokeWeight(10);
  
    /* for loop will iterate the commands. Set a variable of type integer
  as y1 which is equal to variable yloc, as long a variable y1 is less or
  equal to the height of the page, add the amount set for ySpace
  to y1 and draw a line using param "c" as the colo. Add the for loop as 
  point y1 and y2 of the line. */
  for(int y1 = yloc; y1 <= tall; y1 += ySpace) {
        // assign stoke color for the lines
        stroke(c);
        // Create a line
        line(x1, y1, x2, y1);
   }
}

/* Function drawRect has the setups to create colored rectangles on the page
it calls for "c" which stands for color, params x, y for location and wide
and tall for size.
*/
void drawRect(int c, int x, int y, int wide, int tall){
  // fill the rectangle with color c
  fill(c);
  // rectangle coordinates
  rect(x, y, wide, tall);
}

// end.
