public void setup() {
	size(800,800);
	noFill();
	background(0);
	stroke(255);
	int j = 0;
	for(int i = 10; i <= 100; i=i+10)
	{
		j = i;
		oFractal(20+i,20+i,30,30,50);
	}
	
}
//public void draw() {
	//for(int i =100; i < 200; i=i+10)
	//{
		//oFractal(40+i,40+i,0);
	//}
	
//}
public void oFractal(int x,int y, int z, int a, int n) {
	if(n<=10)
	{
		rect(x, y, z, a);
	}
	else
	{
		oFractal(x+10,y+10,z,a,n/2);
	}
}