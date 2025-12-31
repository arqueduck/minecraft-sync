#priority -100

// Allows sharing the factory between files
public class ContentBuilder {
  public static val factory = new ColoredContentFactory();
}

ContentBuilder.factory.build();
