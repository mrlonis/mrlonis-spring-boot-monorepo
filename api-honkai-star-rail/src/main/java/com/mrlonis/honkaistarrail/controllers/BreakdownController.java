package com.mrlonis.honkaistarrail.controllers;

import com.mrlonis.honkaistarrail.dto.OrnamentBreakdown;
import com.mrlonis.honkaistarrail.dto.RelicBreakdown;
import com.mrlonis.honkaistarrail.exceptions.NotFoundException;
import com.mrlonis.honkaistarrail.services.OrnamentBreakdownService;
import com.mrlonis.honkaistarrail.services.RelicBreakdownService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.UUID;

@RestController
@RequestMapping("/api/v2")
@AllArgsConstructor
@CrossOrigin(origins = "http://localhost:3001")
public class BreakdownController {
    private OrnamentBreakdownService ornamentBreakdownService;
    private RelicBreakdownService relicBreakdownService;

    @GetMapping("/ornamentBreakdown")
    public OrnamentBreakdown getOrnamentBreakdownForOrnament(@RequestParam UUID ornamentId,
                                                             @RequestParam int ornamentDepth) throws NotFoundException {
        return ornamentBreakdownService.getBreakdown(ornamentId, ornamentDepth);
    }

    @GetMapping("/relicBreakdown")
    public RelicBreakdown getRelicBreakdown(@RequestParam UUID relicId, @RequestParam int relicDepth)
            throws NotFoundException {
        return relicBreakdownService.getBreakdown(relicId, relicDepth);
    }
}
