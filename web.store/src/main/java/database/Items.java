package database;

import model.Item;

import java.util.ArrayList;
import java.util.List;

public class Items {
    public static List<Item> itemList = new ArrayList();
    static {
        itemList.add(new Item("MAN - Item 01", 3.43));
        itemList.add(new Item("MAN - Item 02", 5.15));
        itemList.add(new Item("MAN - Item 03", 1.89));
        itemList.add(new Item("MAN - Item 04", 1.89));
        itemList.add(new Item("Kids - Item 01", 3.23));
        itemList.add(new Item("BudLight", 2.98));
        itemList.add(new Item("Orange Juice", 4.53));
        itemList.add(new Item("Lemon Juice", 3.68));
        itemList.add(new Item("Pilau", 4.28));
        itemList.add(new Item("Beef Rice", 10.32));
        itemList.add(new Item("Beef Rice and Egg", 14.74));
        itemList.add(new Item("Egg Rice", 5.15));
        itemList.add(new Item("Soup Noodle", 3.48));
        itemList.add(new Item("Beef Noodle", 8.23));
        itemList.add(new Item("Beef Noodle and Egg", 10.23));
    }
}
