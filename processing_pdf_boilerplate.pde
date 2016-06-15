import processing.pdf.*;
import com.lowagie.text.Rectangle;
import com.lowagie.text.PageSize;

// Set the needed paper size here
Rectangle pageSize = PageSize.A5;
Orientation orientation = Orientation.PORTRAIT;
int pageCount = 100;

void setup() {
  init();
}

void draw() {
  
  // Draw something here
  
  nextPage();
}