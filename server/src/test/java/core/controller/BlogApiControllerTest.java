package core.controller;

import static org.assertj.core.api.Assertions.assertThat;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.put;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import com.fasterxml.jackson.databind.ObjectMapper;
import core.domain.Article;
import core.dto.AddArticleRequest;
import core.dto.UpdateArticleRequest;
import core.repository.BlogRepository;
import java.util.List;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@SpringBootTest
@AutoConfigureMockMvc
class BlogApiControllerTest {

  @Autowired
  protected MockMvc mockMvc;

  @Autowired
  protected ObjectMapper objectMapper;

  @Autowired
  private WebApplicationContext context;

  @Autowired
  BlogRepository blogRepository;

  @BeforeEach
  public void mockMvcSetUp() {
    this.mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
    blogRepository.deleteAll();
  }

  @DisplayName("addArticle: 블로그 글 추가에 성공한다.")
  @Test
  public void addArticle() throws Exception {
    // given
    final String url = "/api/articles";
    final String title = "title";
    final String content = "content";
    final AddArticleRequest userRequest = new AddArticleRequest(title, content);

    final String requestBody = objectMapper.writeValueAsString(userRequest);

    // when
    ResultActions result = mockMvc.perform(post(url)
        .contentType(MediaType.APPLICATION_JSON_VALUE)
        .content(requestBody));

    // then
    result.andExpect(status().isCreated());

    List<Article> articles = blogRepository.findAll();

    assertThat(articles.size()).isEqualTo(1);
    assertThat(articles.getFirst().getTitle()).isEqualTo(title);
    assertThat(articles.getFirst().getContent()).isEqualTo(content);
  }

  @DisplayName("findAllArticles: 블로그 글 목록 조회에 성공한다.")
  @Test
  public void findAllArticles() throws Exception {
    // given
    final String url = "/api/articles";
    final String title = "title";
    final String content = "content";

    blogRepository.save(Article.builder()
        .title(title)
        .content(content)
        .build());

    // when
    final ResultActions resultActions = mockMvc.perform(get(url)
        .accept(MediaType.APPLICATION_JSON));

    // then
    resultActions
        .andExpect(status().isOk())
        .andExpect(jsonPath("$[0].content").value(content))
        .andExpect(jsonPath("$[0].title").value(title));
  }

  @DisplayName("findArticle: 블로그 글 조회에 성공한다.")
  @Test
  public void findArticleTest() throws Exception {
    // given
    final String url = "/api/articles/{id}";
    final String title = "title";
    final String content = "content";

    Article savedArticle = blogRepository.save(Article.builder()
        .title(title)
        .content(content)
        .build());

    // when
    final ResultActions resultActions = mockMvc.perform(get(url, savedArticle.getId()));

    // then
    resultActions
        .andExpect(status().isOk())
        .andExpect(jsonPath("$.content").value(content))
        .andExpect(jsonPath("$.title").value(title));
  }

  @DisplayName("deleteArticle: 블로그 글 삭제에 성공한다.")
  @Test
  public void deleteArticleTest() throws Exception {
    // given
    final String url = "/api/articles/{id}";
    final String title = "title";
    final String content = "content";

    Article savedArticle = blogRepository.save(Article.builder()
        .title(title)
        .content(content)
        .build());

    // when
    mockMvc.perform(delete(url, savedArticle.getId())).andExpect(status().isOk());

    // then
    List<Article> articles = blogRepository.findAll();

    assertThat(articles).isEmpty();

  }


  @DisplayName("updateArticle: 블로그 글 수정에 성공한다.")
  @Test
  public void updateArticleTest() throws Exception {
    // given
    final String url = "/api/articles/{id}";
    final String title = "title";
    final String content = "content";

    Article savedArticle = blogRepository.save(Article.builder()
        .title(title)
        .content(content)
        .build());

    final String newTitle = "newTitle";
    final String newContent = "newContent";

    UpdateArticleRequest request = new UpdateArticleRequest(newTitle, newContent);

    // when
    mockMvc.perform(put(url, savedArticle.getId()).contentType(MediaType.APPLICATION_JSON)
        .content(objectMapper.writeValueAsString(request))).andExpect(status().isOk());

    // then
    Article article = blogRepository.findById(savedArticle.getId()).get();

    assertThat(article.getTitle()).isEqualTo(newTitle);
    assertThat(article.getContent()).isEqualTo(newContent);

  }
}