package com.mrlonis.genshinimpact.controllers;

import com.mrlonis.genshinimpact.entities.Character;
import com.mrlonis.genshinimpact.repositories.CharactersRepository;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.ResultActions;

import java.util.List;

import static org.hamcrest.Matchers.containsString;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@WebMvcTest(CharactersController.class)
public class CharactersControllerWebLayerTests {
    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private CharactersRepository charactersRepository;

    @Test
    public void shouldReturnAllCharacters() throws Exception {
        when(charactersRepository.findAll(Mockito.any(Pageable.class))).thenReturn(
                new PageImpl<>(List.of(Character.builder().build())));
        this.mockMvc.perform(get("/api/v2/characters"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("content")));
    }

    @Test
    public void shouldReturnAllCharacters_v2() throws Exception {
        when(charactersRepository.findAll(Mockito.any(Pageable.class))).thenReturn(
                new PageImpl<>(List.of(Character.builder().build())));
        ResultActions result = this.mockMvc.perform(get("/api/v2/characters"));
        MvcResult result_v2 = result.andReturn();
        assertEquals(200, result_v2.getResponse().getStatus());
        String json = result_v2.getResponse().getContentAsString();
        assertTrue(json.contains("content"));
    }
}
