package Entities;
import java.awt.image.BufferedImage;

import java.awt.Rectangle;

public interface Entity {
    //must use setter and get methods due to multithreading issues
    public abstract void movePosition(int x, int y); //move position based off a change in x and y
    public abstract int getXPosition(); 
    public abstract int getYPosition();
    public abstract void setXPosition(int x);
    public abstract void setYPosition(int y);
    public abstract BufferedImage getAnimation();
    public abstract Rectangle getHitBox();
    public abstract int getXDifference();
    public abstract int getYDifference();
    public abstract void setInAir(boolean b);
    public abstract boolean getInAir();
    public abstract void updateGravityValue();
    public abstract void setGravityValue(int g);
    public abstract int getGravityValue();
    public void updateAnimation();
    public abstract void setAnimation();
}