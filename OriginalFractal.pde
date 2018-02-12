public int j;
public void setup() {
	size(800,800);
	noFill();
	background(0,0,0);
	stroke(0);
	strokeWeight(2);
	oFractal(650,780,1,1,275,650,780);

}
public void draw() {
		//frameRate(5);
		//j++;
		//if(j%2==0)
		//{
		//	background(0);
		//	stroke(255);
		//	strokeWeight(1);
		//	oFractal(650,780,1,1,275,650,780);
		//}
		//else
		//{
		//	background(0,0,0);
		//	stroke(0);
		//	strokeWeight(2);
		//	oFractal(650,780,1,1,275,650,780);
		//}	
}
public void mousePressed()
{
		
		j++;
		if(j%2==0)
		{
			background(0);
			stroke(255);
			strokeWeight(1);
			bFractal(650,780,1,1,275,650,780);
		}
		else
		{
			background(0,0,0);
			stroke(0);
			strokeWeight(2);
			oFractal(650,780,1,1,275,650,780);
		}
	
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
	stroke(random(256),random(256),random(256));
	line(k,l,x,y);
	//rect(x,y,z,a);

	if(n>1)
	{
		oFractal(x+(float)(Math.sin(n)*1.5*n),y+(float)(Math.cos(n)*1.5*n),z+0.05,a+0.05,n-1,b,c);
	}
}
public void bFractal(float x,float y, float z, float a, float n, float k, float l) {
	
	stroke(random(256),random(256),random(256));
	line(k,l,x,y);
	rect(x,y,z,a);
	if(n>1)
	{
		bFractal(x+(float)(Math.sin(n)*1.5*n),y+(float)(Math.cos(n)*1.5*n),z+0.05,a+0.05,n-1,x+(float)(Math.sin(n+1)*1.5*(n+1)),y+(float)(Math.cos(n+1)*1.5*(n+1)));
	}
}