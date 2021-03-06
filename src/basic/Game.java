package basic;

import java.io.File;

public class Game {


    private Model model;
    private int round;

    public Game(int numPeople) {
        if (numPeople < 2 || numPeople > 5) {
            System.out.println("Please enter right number of people.");
            return;
        }
        //game initial
        model = new Model(numPeople);
        model.distributeCards(new File("StarCitizenDeck.txt"));
//        for (Player p:model.getPlayers()){
//            System.out.println(p.getName()+" "+p.getCards().size());
//        }

        model.setPrintLost(false);


    }


    public Model getModel() {
        return model;
    }

    public int getRound() {
        return round;
    }

    public boolean isUserAlive() {
        return model.getPlayers().get(0).isUser();
    }

}
