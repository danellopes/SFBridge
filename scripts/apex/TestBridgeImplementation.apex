IRenderer renderer = (IRenderer) Type.forName('VectorRenderer').newInstance();

Circle circle = new Circle(renderer, 5);
circle.draw();
circle.resize(2);
circle.draw();