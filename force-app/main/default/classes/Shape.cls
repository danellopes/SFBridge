public abstract class Shape {
    protected IRenderer renderer;

    protected Shape(IRenderer renderer)
    {
        this.renderer = renderer;
    }

    public abstract void draw();
    public abstract void resize(Double factor);
}