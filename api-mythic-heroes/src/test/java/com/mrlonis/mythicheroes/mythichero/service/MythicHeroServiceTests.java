package com.mrlonis.mythicheroes.mythichero.service;

import com.mrlonis.mythicheroes.mythichero.MythicHero;
import com.mrlonis.mythicheroes.mythichero.MythicHeroRepository;
import com.mrlonis.mythicheroes.mythichero.MythicHeroService;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class MythicHeroServiceTests {
    @InjectMocks
    MythicHeroService mythicHeroService;

    @Mock
    MythicHeroRepository mythicHeroRepository;

    @Test
    public void shouldGetAll_whenThereAreNoRequestParams() {
        PageImpl<MythicHero> expectedResult = new PageImpl<>(List.of(MythicHero.builder().build()));

        when(mythicHeroRepository.findAll(Mockito.any(Pageable.class))).thenReturn(expectedResult);

        Page<MythicHero> actualResult = this.mythicHeroService.get(null, null, null, null, Pageable.ofSize(5));

        assertNotNull(actualResult);
        assertEquals(actualResult.getNumber(), 0);
    }

}
