package Main;

import Inputs.KeyBoardInputs;

import static Main.Game.GAME_HEIGHT;
import static Main.Game.GAME_WIDTH;

import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JPanel;

public class GamePanel extends JPanel{

    
    public Game game;
    public JButton backbtn;

    public GamePanel(Game game){
        this.setBackground(new Color(137, 207, 240));
        this.game = game;
        setPanelSize();
        addKeyListener(new KeyBoardInputs(this));
        
        
        //backbtn = new JButton("Back");
        ImageIcon imageIcon2 = new ImageIcon("res/backButton/back1.png");
        backbtn = new JButton(imageIcon2);
        backbtn.setUI(new ShapedButtonUI());
        backbtn.setPreferredSize(new Dimension(imageIcon2.getIconWidth(), imageIcon2.getIconHeight()));
        backbtn.setRolloverIcon(new ImageIcon("res/backButton/back2.png"));
        add(backbtn);
        
    }

    void setPanelSize()
    {
        Dimension size = new Dimension(1500, 900);
        setPreferredSize(size);
        System.out.println("size : " + GAME_WIDTH + " : " + GAME_HEIGHT);
    }

    

    

    public void paintComponent(Graphics g){
        super.paintComponent(g);
        //g.drawImage(LoadSave.getSpriteAtlas(LoadSave.BACKGROUND), 0, 0, null);
        game.render(g);
    }

    

    public Game getGame() {
        return game;
    }



    public void setGame(Game game) {
        this.game = game;
    }
    
    public JButton getBackButton(){
        return backbtn;
    }
}




