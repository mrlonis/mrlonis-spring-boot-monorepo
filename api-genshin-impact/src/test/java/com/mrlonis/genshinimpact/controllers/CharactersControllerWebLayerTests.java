package com.mrlonis.genshinimpact.controllers;

import static org.hamcrest.Matchers.containsString;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.mrlonis.genshinimpact.entities.Character;
import com.mrlonis.genshinimpact.enums.CircletMainStats;
import com.mrlonis.genshinimpact.enums.GobletMainStats;
import com.mrlonis.genshinimpact.enums.SandsMainStats;
import com.mrlonis.genshinimpact.enums.Substats;
import com.mrlonis.genshinimpact.enums.WeaponTypes;
import com.mrlonis.genshinimpact.repositories.CharactersRepository;
import java.util.List;
import java.util.UUID;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.test.context.bean.override.mockito.MockitoBean;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.ResultActions;

@WebMvcTest(CharactersController.class)
class CharactersControllerWebLayerTests {
    @Autowired
    private MockMvc mockMvc;

    @MockitoBean
    private CharactersRepository charactersRepository;

    @Test
    void shouldReturnAllCharacters() throws Exception {
        when(charactersRepository.findAll(Mockito.any(Pageable.class)))
                .thenReturn(new PageImpl<>(
                        List.of(Character.builder()
                                .name("Test")
                                .imageUrl("Test")
                                .weaponType(WeaponTypes.BOW)
                                .elementId(UUID.randomUUID())
                                .sandsStatOne(SandsMainStats.ENERGY_RECHARGE)
                                .gobletStatOne(GobletMainStats.ANEMO_DAMAGE_BONUS)
                                .circletStatOne(CircletMainStats.ATTACK_PERCENT)
                                .substatOne(Substats.ATTACK_FLAT)
                                .substatTwo(Substats.CRITICAL_RATE)
                                .substatThree(Substats.HEALTH_PERCENT)
                                .weaponOneId(UUID.randomUUID())
                                .artifactSetOneIdFirst(UUID.randomUUID())
                                .build()),
                        Pageable.ofSize(1),
                        1));
        this.mockMvc
                .perform(get("/api/v2/characters"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().string(containsString("content")));
    }

    @Test
    void shouldReturnAllCharacters_v2() throws Exception {
        when(charactersRepository.findAll(Mockito.any(Pageable.class)))
                .thenReturn(new PageImpl<>(
                        List.of(Character.builder()
                                .name("Test")
                                .imageUrl("Test")
                                .weaponType(WeaponTypes.BOW)
                                .elementId(UUID.randomUUID())
                                .sandsStatOne(SandsMainStats.ENERGY_RECHARGE)
                                .gobletStatOne(GobletMainStats.ANEMO_DAMAGE_BONUS)
                                .circletStatOne(CircletMainStats.ATTACK_PERCENT)
                                .substatOne(Substats.ATTACK_FLAT)
                                .substatTwo(Substats.CRITICAL_DAMAGE)
                                .substatThree(Substats.HEALTH_PERCENT)
                                .weaponOneId(UUID.randomUUID())
                                .artifactSetOneIdFirst(UUID.randomUUID())
                                .build()),
                        Pageable.ofSize(1),
                        1));
        ResultActions result = this.mockMvc.perform(get("/api/v2/characters"));
        MvcResult result_v2 = result.andReturn();
        assertEquals(200, result_v2.getResponse().getStatus());
        String json = result_v2.getResponse().getContentAsString();
        assertTrue(json.contains("content"));
    }
}
