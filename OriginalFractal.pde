public void setup() {
	size(800,800);
	noFill();
	background(0);
	stroke(255);
	int j = 0;
	for(int i = 10; i <= 100; i=i+10)
	{
		j = i;
		oFractal(j,j,30);
	}
	
}
//public void draw() {
	//for(int i =100; i < 200; i=i+10)
	//{
		//oFractal(40+i,40+i,0);
	//}
	
//}
public void oFractal(int x,int y,int n) {
	if(n<=10)
	{
		rect(x, y, x+n, y+n);
	}
	else
	{
		oFractal(x,y,n/2);
	}
}