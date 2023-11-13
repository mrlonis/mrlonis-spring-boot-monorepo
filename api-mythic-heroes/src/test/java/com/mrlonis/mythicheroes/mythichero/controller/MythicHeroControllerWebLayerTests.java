package com.mrlonis.mythicheroes.mythichero.controller;

import com.mrlonis.mythicheroes.mythichero.MythicHero;
import com.mrlonis.mythicheroes.mythichero.MythicHeroController;
import com.mrlonis.mythicheroes.mythichero.MythicHeroService;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;

import java.util.List;

import static org.hamcrest.Matchers.containsString;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.validateMockitoUsage;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@WebMvcTest(MythicHeroController.class)
public class MythicHeroControllerWebLayerTests {
    @MockBean
    private MythicHeroService mythicHeroService;

    @Test
    public void shouldReturnAllCharacters(@Autowired MockMvc mockMvc) throws Exception {
        when(mythicHeroService.get(Mockito.eq(null),
                                   Mockito.eq(null),
                                   Mockito.eq(null),
                                   Mockito.eq(null),
                                   Mockito.any(Pageable.class))).thenReturn(new PageImpl<>(List.of(MythicHero.builder()
                                                                                                             .build())));
        mockMvc.perform(get("/api/v2//mythicHero"))
               .andDo(print())
               .andExpect(status().isOk())
               .andExpect(content().string(containsString("content")));
    }

    @Test
    public void shouldReturnAllCharacters_v2(@Autowired MockMvc mockMvc) throws Exception {
        PageImpl<MythicHero> expectedResult = new PageImpl<>(List.of(MythicHero.builder().build()));

        when(mythicHeroService.get(Mockito.eq(null),
                                   Mockito.eq(null),
                                   Mockito.eq(null),
                                   Mockito.eq(null),
                                   Mockito.any(Pageable.class))).thenReturn(expectedResult);

        MvcResult result = mockMvc.perform(get("/api/v2/mythicHero")).andReturn();
        assertEquals(200, result.getResponse().getStatus());
        String json = result.getResponse().getContentAsString();
        assertTrue(json.contains("content"));
        validateMockitoUsage();
    }
}
