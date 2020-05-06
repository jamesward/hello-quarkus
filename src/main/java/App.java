import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

@Path("/")
public class App {

    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String index() {
        return "hello, world";
    }

}
