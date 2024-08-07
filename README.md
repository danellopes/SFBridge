### Example of the Bridge Design Pattern

This example of the Bridge Design Pattern pattern was develop using Salesforce Apex language, but I've originally learned about this pattern in C#, so a few things changed, mainly the methods and syntax available.

This technique consists of creating a connection between our classes so that we don’t have to duplicate logic. In our example, we have multiple shapes and multiple ways of rendering them. The common solution would be to include the render logic inside each shape when we call the `.Draw()` method. However, this approach can lead to code duplication and difficulty in maintaining the codebase, especially when new shapes or rendering methods are added.

Instead, the Bridge design pattern suggests that we decouple the shape from the rendering logic. This is achieved by creating a renderer interface that encapsulates the rendering logic. Each shape class does not implement the rendering logic directly but instead receives a renderer interface in its constructor. This renderer interface is then used to render the shape regardless of the specific rendering method.

For example, consider a `Circle` and a `Square` shape that can be rendered using either vector or raster rendering methods. Instead of embedding the vector and raster rendering logic within the `Circle` and `Square` classes, we define a `Renderer` interface with methods like `RenderCircle` and `RenderSquare`. We then create concrete implementations of this interface, such as `VectorRenderer` and `RasterRenderer`.

When we create a `Circle` or `Square` object, we pass an instance of `Renderer` to its constructor. The shape class will use this renderer instance to perform the rendering. This way, the rendering logic is separated from the shape classes, making the system more flexible and easier to extend. We can add new shapes or new rendering methods without modifying existing classes, adhering to the Open/Closed Principle.

This approach reduces code duplication, enhances maintainability, and allows for greater flexibility in the system design.

If you're interested in the [udemy course](https://www.udemy.com/course/design-patterns-csharp-dotnet) by [Dmitri Nesteruk](https://www.udemy.com/user/dmitrinesteruk/).
