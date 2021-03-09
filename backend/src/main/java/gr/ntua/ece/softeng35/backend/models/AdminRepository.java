package gr.ntua.ece.softeng35.backend.models;

import java.util.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.transaction.annotation.Transactional;

import org.springframework.web.bind.annotation.*;

public interface AdminRepository extends JpaRepository<Admin, Integer> {

    //Queries used for testing of deleting all entries from table
    @Transactional
    @Modifying
    @Query(value = "DELETE FROM Admin")
    void deleteAllFromAdmin();

    @Query(value = "SELECT COUNT(*) FROM Admin")
    Long countAllFromAdmin();

    @Transactional
    @Modifying
    @Query(value = "UPDATE Admin u SET u.username = ?1, u.password = ?2 WHERE u.apiKey = ?3 ")
    void updateHeadAdminFromAdmin(String username, String password, String apiKey);

    @Query(value = "SELECT u.username, u.password FROM Admin u WHERE u.firstName ='Admin' AND u.apiKey = ?1 ")
    List<List<String>> findHeadAdminByApiKey(String apiKey);
}