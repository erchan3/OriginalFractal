void setup()
{
    size(400, 400);
    noFill();
    stroke(0);
    background(200);
    drawThing(5, width / 2, height / 2, width / 2, height / 2);
}

void drawThing(int n, int x, int y, int w, int h)
{
    if (n > 0) {
        ellipse(x, y, w, h);
        drawThing(n - 1, x, y - h / 2, w / 3, h / 3); // top
        drawThing(n- 1, x, y + h / 2, w / 3, h / 3); // bottom
        drawThing(n - 1, x - w / 2, y, w / 3, h / 3); // left
        drawThing(n - 1, x + w / 2, y, w / 3, h / 3); // right
    }
}
