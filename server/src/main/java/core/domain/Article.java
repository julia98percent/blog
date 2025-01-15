package core.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import java.time.LocalDateTime;
import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)

public class Article {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)

  @Column(name = "id", updatable = false)
  private Long id;

  @Column(name = "title", nullable = false)
  private String title;

  @Column(name = "subtitle")
  private String subtitle;

  @Column(name = "content", nullable = false, columnDefinition = "LONGTEXT")
  private String content;

  @Column(name = "createdDate")
  private LocalDateTime createdDate;

  @Column(name = "category")
  private String category;

  @Column(name = "tags", columnDefinition = "LONGTEXT")
  private String tags;

  @Builder
  public Article(String title, String content, String subtitle, String category, String tags
  ) {
    this.title = title;
    this.content = content;
    this.subtitle = subtitle;
    this.category = category != null ? category : "ect";
    this.tags = tags;
    this.createdDate = LocalDateTime.now();
  }

  public void update(String title, String content) {
    this.title = title;
    this.content = content;
  }
}