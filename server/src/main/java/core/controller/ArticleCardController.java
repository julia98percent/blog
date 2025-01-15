package core.controller;

import core.dto.ArticleCard;
import core.service.BlogService;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api")
public class ArticleCardController {

  private final BlogService blogService;

  @GetMapping("/article-cards")
  public List<ArticleCard> getArticles(@RequestParam(required = false) String category) {
    return blogService.findArticleCardsByCategory(category);
  }
}