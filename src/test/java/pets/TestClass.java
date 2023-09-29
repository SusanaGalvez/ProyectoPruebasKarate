package pets;
import com.intuit.karate.junit5.Karate;

public class TestClass {
    @Karate.Test
    Karate userCountPets(){
        return Karate.run("count-and-same-name").relativeTo(getClass());
    }

}
