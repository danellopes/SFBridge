public class Circle extends Shape{
    Double radius;

    public Circle(IRenderer renderer, Double radius)
    {
        super(renderer);
        this.radius = radius;
    }

    public override void draw()
    {
        renderer.renderCircle(radius);
    }
    
    public override void resize(Double factor)
    {
        this.radius *= factor;
    }
}