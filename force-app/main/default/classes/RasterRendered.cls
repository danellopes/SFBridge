public class RasterRendered implements IRenderer {
    public void renderCircle(Double radius)
    {
        System.debug(String.format('Drawing pixels for circle with radius {0}', new List<Object>{radius}));
    }
}