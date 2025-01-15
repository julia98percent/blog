package core.controller;

import core.domain.Article;
import core.dto.AddArticleRequest;
import core.dto.UpdateArticleRequest;
import core.service.BlogService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequiredArgsConstructor
@RestController
@RequestMapping("/api")
public class ArticleController {

  private final BlogService blogService;

  @GetMapping("/article/{id}")
  public Article getArticle(@PathVariable long id) {
    return blogService.findById(id);
  }

  @PostMapping("/article")
  public ResponseEntity<Article> addArticle(@RequestBody AddArticleRequest request) {
    Article savedArticle = blogService.save(request);

    return ResponseEntity.status(HttpStatus.CREATED)
        .body(savedArticle);
  }

  @PutMapping("/article/{id}")
  public ResponseEntity<Article> updateArticle(@PathVariable long id, @RequestBody
  UpdateArticleRequest request) {
    Article updatedArticle = blogService.update(id, request);

    return ResponseEntity.ok().body(updatedArticle);
  }

  @DeleteMapping("/article/{id}")
  public ResponseEntity<Void> deleteArticle(@PathVariable long id) {
    blogService.delete(id);

    return ResponseEntity.ok().build();
  }
}