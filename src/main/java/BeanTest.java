import java.util.ArrayList;

public class BeanTest {
    public static void main(String[] args) {
        Album album1 = new Album(1, "Album 1", "Artist 1");
        Album album2 = new Album(2, "Album 2", "Artist 2");

        Author author1 = new Author(1, "Author 1");
        Author author2 = new Author(2, "Author 2");

        Quote quote1 = new Quote(1, "Quote 1", author1);
        Quote quote2 = new Quote(2, "Quote 2", author2);
        Quote quote3 = new Quote(3, "Quote 3", author1);

        ArrayList<Quote> quotes = new ArrayList<>();
        quotes.add(quote1);
        quotes.add(quote2);
        quotes.add(quote3);

        for (Quote quote : quotes) {
            System.out.println("Quote: " + quote.getContent());
            System.out.println("Author: " + quote.getAuthor().getName());
            System.out.println();
        }
    }
}
