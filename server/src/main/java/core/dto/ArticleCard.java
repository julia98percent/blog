package core.dto;

import core.domain.Article;
import java.time.LocalDateTime;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class ArticleCard {

  private LocalDateTime createdDate;
  private String title;
  private String content;
  private String subtitle;
  private String category;


  @Builder
  public ArticleCard(String title, String content, String category, String subtitle,
      LocalDateTime createdDate) {
    this.title = title;
    this.content = content;
    this.category = category;
    this.subtitle = subtitle;
    this.createdDate = createdDate;
  }

  public static ArticleCard fromArticle(Article article) {
    return ArticleCard.builder().title(article.getTitle()).category(article.getCategory())
        .subtitle(article.getSubtitle()).createdDate(article.getCreatedDate()).build();
  }
}