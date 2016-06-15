
enum Orientation {
  PORTRAIT,
  LANDSCAPE
}

String renderer = PDF;
String filename = "out.pdf";
PGraphicsPDF pdf;

void settings() {
  if (orientation == Orientation.LANDSCAPE) {
    size((int)pageSize.getTop(), (int)pageSize.getRight(), renderer, filename);
  } else {
    size((int)pageSize.getRight(), (int)pageSize.getTop(), renderer, filename);
  }
}

void init() {
  pdf = (PGraphicsPDF) g;  // Get the renderer
}

void nextPage() {
  pdf.nextPage();  // Tell it to go to the next page

  // When finished drawing, quit and save the file
  if (frameCount >= pageCount) {
    exit();
  }
}