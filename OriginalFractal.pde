public void setup() {
	size(800,800);
	noFill();
	background(255,0,0);
	stroke(0);
	strokeWeight(3);
	oFractal(650,780,1,1,275,650,780);

}
public void draw() {
	int j = 0;
	
	//for(int i = 0; i < 180; i++)
	//{

		//oFractal(380+(int)(Math.sin(i)*1.5*i),380+(int)(Math.cos(i)*1.5*i),i/30,i/30,0);
		//System.out.println(Math.sin(i));
		//System.out.println(i);
		
	//}
	//for(int i =100; i < 200; i=i+10)
	//{
		//oFractal(40+i,40+i,0);
	//}
	
}
public void oFractal(float x,float y, float z, float a, float n, float k, float l) {
	//if(n<=10)
	//{
	//	rect(x, y, z, a);
	//}
	//else
	//{
	//	oFractal(x+(int)(Math.sin(n)*1.5*n),y+(int)(Math.cos(n)*1.5*n),z,a,n-1);
	//}
	float b = x;
	float c = y;
	line(k,l,x,y);
	//rect(x,y,z,a);

	if(n>1)
	{
		oFractal(x+(float)(Math.sin(n)*1.5*n),y+(float)(Math.cos(n)*1.5*n),z+0.05,a+0.05,n-1,b,c);
		//System.out.println(x+Math.sin(n)*1.5*n);
		//System.out.println(x+Math.sin(n+1)*1.5*(n+1));
	}
}