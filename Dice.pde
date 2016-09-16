void setup()
{
    size(400, 400);
    noLoop();
}
void draw()
{   
    int total = 0;
    fill(255);
    for(int y=0; y<400; y+=50) {
        for(int x=0; x<400; x+=50)        
{
    Die jchu = new Die(x,y);
    jchu.roll();
    total += jchu.randomN;
    jchu.show();
    //your code here
}
}
fill(255);
textSize(200);
text(total, 20, 240);
}
void mousePressed()
{
    redraw();
}
class Die //models one single dice cube
{
    int myX, myY, randomN;//variable declarations here
    Die(int x, int y) 
    {
        myX = x;
        myY = y;
        //variable initializations here
    }
    void roll()
    {
        randomN = (int) (Math.random()*6)+1;//your code here
    }
    void show()
    {
        stroke(255);
        fill(0);
        rect(myX, myY, 50, 50);//your code here
        fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
        if (randomN ==1 ) {
            ellipse(myX+25, myY+25, 13, 13);
        }
        else if(randomN ==2) {
            ellipse(myX+10, myY+10, 13, 13);
            ellipse(myX+40, myY+40, 13, 13);
        } 
        else if(randomN == 3) {
            ellipse(myX+10 , myY+10, 13, 13);
            ellipse(myX+25 , myY+25, 13, 13);
            ellipse(myX+40 , myY+40, 13, 13);
        }
        else if(randomN ==4) {
            ellipse(myX+10, myY+10, 13, 13);
            ellipse(myX+10, myY+40, 13, 13);
            ellipse(myX+40, myY+10, 13, 13);
            ellipse(myX+40, myY+40, 13, 13);
        }
        else if(randomN == 5) {
            ellipse(myX+25, myY+25, 13, 13);
            ellipse(myX+10, myY+10, 13, 13);
            ellipse(myX+10, myY+40, 13, 13);
            ellipse(myX+40, myY+10, 13, 13);
            ellipse(myX+40, myY+40, 13, 13);
        }
        else if(randomN ==6 ) {
            ellipse(myX+10, myY+10, 13, 13);
            ellipse(myX+10, myY+25, 13, 13);
            ellipse(myX+10, myY+40, 13, 13);
            ellipse(myX+40, myY+10, 13, 13);
            ellipse(myX+40, myY+25, 13, 13);
            ellipse(myX+40, myY+40, 13, 13);
        }

}
}
