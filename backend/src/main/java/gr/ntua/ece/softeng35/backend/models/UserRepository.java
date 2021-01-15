package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.web.bind.annotation.*;

public interface UserRepository extends JpaRepository<User, Integer> {

    @Query(value = "SELECT u.id FROM User u WHERE u.username= ?1 AND u.password= ?2")
    List<Object> findIdByUsernameAndPassword(String username, String password);

}