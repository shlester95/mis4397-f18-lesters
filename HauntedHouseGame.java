import java.util.Scanner;
public class HauntedHouseGame
{
	public static void main(String[] args)
	{
		intro();
	}
	
	public static void intro()
	{
		System.out.print("Before we start this game, I want you to realize that you have to write the answers exactly how they are spelled out.\nI'm still fairly new at programming, and this is my first venture outside of a class, so be nice! Capitalization doesn't matter, but note that there aren't any punctuation marks for any of the answers.");
		start();
	}
	
	public static void start()
	{
		Scanner keyboard = new Scanner(System.in);
		System.out.print("\nIn order to begin the game, you need to write:\n\nStart the game\n\nOnce you do that, the game will begin. Write your answer here >> ");
		String choice = keyboard.nextLine();

		if (choice.equalsIgnoreCase("Start the game"))
		{
			begin();
		}
		else
		{
			System.out.println("\nWow, you really can't follow directions. I wish you luck, my friend.\nLet's try this again");
			start();
		}
	}
	public static void redo()
	{
		System.out.println("\nInvalid input. Please try again.");
	}
	public static void begin()
	{
		Scanner keyboard = new Scanner(System.in);
		System.out.print("\nYou're walking down the street when you come across a haunted house.\nYou're sure that nobody lives there, and you've always wanted to explore it. Do you:\n\nGo inside\nRun away\n\nPlease enter your choice here... >> ");
		String choice = keyboard.nextLine();

		if (choice.equalsIgnoreCase("Go inside"))
		{
			goInside();
		}
		else if (choice.equalsIgnoreCase("Run away"))
		{
			//Ends game
			System.out.println("\nReally? You're not going to go inside? Well, perhaps you made the right choice. Who knows?\n\n\nActually, no. I worked hard on this and you're choosing not to play it! Fine! Instead of just running away safely, you\nget hit by a car instead. How about that?\nNext time, play my game. Jerk.\n");
		}
		else
		{
			redo();
			begin();
		}
	}
	public static void goInside()
	{
		Scanner keyboard = new Scanner(System.in);

		System.out.print("\nYou go inside. Of course like any haunted house the lights don't work.\nHowever there is a box of matches and a candle near the door.\nYou could also use your phone's flashlight. Do you:\n\nUse candle\nUse flashlight\n\nPlease enter your choice here... >> ");
		String choice = keyboard.nextLine();

		if (choice.equalsIgnoreCase("Use candle"))
		{
			//You die with this one.
			System.out.println("\nYou strike a match but the air around you catches on fire. Must've been a gas leak or something. You burn to death.");
		}
		else if (choice.equalsIgnoreCase("Use flashlight"))
		{
			useFlashlight();
		}
		else
		{
			redo();
			goInside();
		}
	}
	public static void useFlashlight()
	{
		Scanner keyboard = new Scanner(System.in);

		System.out.print("\nYou use the flashlight on your phone. Good thing you also brought your battery pack!\nYou look around the entryway and notice that there are two paths you can take: upstairs or into the kitchen. Do you:\n\nGo upstairs\nGo into kitchen\n\nPlease enter your choice here... >> ");
		String choice = keyboard.nextLine();

		if (choice.equalsIgnoreCase("Go upstairs"))
		{
			goUpstairs();
		}
		else if (choice.equalsIgnoreCase("Go into kitchen"))
		{
			goIntoKitchen();
		}
		else
		{
			redo();
			useFlashlight();
		}
	}
	public static void goUpstairs()
	{
		Scanner keyboard = new Scanner(System.in);

		System.out.print("\nYou go upstairs. A wave of chills comes over your body.\nYou reach the top of the stairs and notice two more rooms: one that looks like a bedroom, and the other looks like a\nbathroom. There is a foul odor coming from the bedroom and a huge cobweb blocking your way into the room.\nWhile you do have a massive fear of spiders, this cobweb looks like it's been abandoned. Do you:\n\nGo into the bathroom\nGo into the bedroom\n\nPlease enter your choice here... >> ");
		String choice = keyboard.nextLine();

		if (choice.equalsIgnoreCase("Go into the bathroom"))
		{
			goIntoBathroom();
		}
		if (choice.equalsIgnoreCase("Go into the bedroom"))
		{
			goIntoBedroom();
		}
	}
	public static void goIntoKitchen()
	{
		//Need to work on this one.
		System.out.println("\nYou go into the kitchen. It smells like beef.");
	}
	public static void goIntoBathroom()
	{
		Scanner keyboard = new Scanner(System.in);

		System.out.print("\nYou walk into the bathroom. Right as you take your first step, you fall through the floor.\nYou aren't injured, but still shooken up over the fact that something like that actually happened.\nYou shake off the dirt and stand up. There's something strange about this room:\nit turns out it is a secret room that has no ordinary entrance.\nUnfortunately this entrance isn't in the room you're currently in, but there is a hallway that leads into the darkness.\nThere is also a rope that you think you can use to repel back up to the bathroom. Do you:\n\nUse the rope\nWalk down the hallway\n\nPlease enter your choice here... >> ");
		String choice = keyboard.nextLine();

		if (choice.equalsIgnoreCase("use the rope"))
		{
			//You die with this one.
			System.out.println("\nYou manage to make a lasso out of the rope and successfully cast it, swing it around the showerhead, and tighten it.\nYou begin your ascent back up to the bathroom. You're just about to make it when the rope snaps. You fall back into the abyss. You die from your injuries.\n");
		}
		else if (choice.equalsIgnoreCase("walk down the hallway"))
		{
			walkHallway();
		}
		else
		{
			redo();
			goIntoBathroom();
		}
	}
	public static void goIntoBedroom()
	{
		//Need to work on this one.
		System.out.print("\nYou go into the bedroom.\n");
	}
	public static void walkHallway()
	{
		//Need to work on this one.
		System.out.print("\nYou walk down the hallway.\n");
	}
}