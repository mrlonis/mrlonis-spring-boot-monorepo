package com.mrlonis.genshinimpact.controllers;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.ResultActions;

import static org.hamcrest.Matchers.containsString;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

//@SpringBootTest
//@AutoConfigureMockMvc
//@ActiveProfiles("h2")
//@AutoConfigureTestDatabase
//public class CharactersControllerWebApplicationTests extends ControllerWebApplicationTests {
//    public CharactersControllerWebApplicationTests() {
//        super("/api/v2/characters");
//    }
//}

@SpringBootTest
@AutoConfigureMockMvc
@ActiveProfiles("test-h2")
@AutoConfigureTestDatabase
public class CharactersControllerWebApplicationTests {
    private final String route = "/api/v2/characters";

    @Test
    public void shouldReturnAll(@Autowired MockMvc mockMvc) throws Exception {
        mockMvc.perform(get(route))
               .andDo(print())
               .andExpect(status().isOk())
               .andExpect(content().string(containsString("content")));
    }

    @Test
    public void shouldReturnAll_v2(@Autowired MockMvc mockMvc) throws Exception {
        ResultActions result = mockMvc.perform(get(route));
        MvcResult result_v2 = result.andReturn();
        assertEquals(200, result_v2.getResponse().getStatus());
        String json = result_v2.getResponse().getContentAsString();
        assertTrue(json.contains("content"));
    }
}