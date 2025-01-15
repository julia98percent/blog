package core.service;

import core.domain.Article;
import core.dto.AddArticleRequest;
import core.dto.ArticleCard;
import core.dto.UpdateArticleRequest;
import core.repository.BlogRepository;
import jakarta.transaction.Transactional;
import java.util.List;
import java.util.stream.Collectors;
import org.springframework.stereotype.Service;


@Service
public class BlogService {

  private final BlogRepository blogRepository;

  // 생성자를 통한 의존성 주입
  public BlogService(BlogRepository blogRepository) {
    this.blogRepository = blogRepository;
  }

  public Article save(AddArticleRequest request) {
    return blogRepository.save(request.toEntity());
  }

  public List<Article> findAll() {
    return blogRepository.findAll();
  }


  public List<ArticleCard> findArticleCardsByCategory(String category) {
    List<Article> articles;

    if (category == null || category.isBlank()) {
      articles = blogRepository.findAll();
    } else {
      articles = blogRepository.findByCategory(category);
    }

    // Article 리스트를 ArticleCard 리스트로 변환
    return articles.stream().map(
            article -> ArticleCard.builder().title(article.getTitle()).category(article.getCategory())
                .subtitle(article.getSubtitle()).createdDate(article.getCreatedDate()).build())
        .collect(Collectors.toList());
  }

  public Article findById(long id) {
    return blogRepository.findById(id)
        .orElseThrow(() -> new IllegalArgumentException("not found: " + id));
  }

  public void delete(long id) {
    blogRepository.deleteById(id);
  }

  @Transactional
  public Article update(long id, UpdateArticleRequest request) {
    Article article = blogRepository.findById(id)
        .orElseThrow(() -> new IllegalArgumentException(("not found: " + id)));

    article.update(request.getTitle(), request.getContent());

    return article;
  }
}