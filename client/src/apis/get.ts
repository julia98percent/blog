import axios from 'axios';

const getArticleCardListFromCategory = async (category?: string) => {
  const response = await axios
    .get(import.meta.env.VITE_SERVER_URL + '/article-cards')
    .then(({ data }) =>
      data.filter((item) => (category ? item.category == category : true)),
    );

  return response;
};

const getArticleFromId = (id: string) => {
  const response = axios
    .get(import.meta.env.VITE_SERVER_URL + `/article/${id}`)
    .then((item) => item?.data);
  return response;
};

export { getArticleCardListFromCategory, getArticleFromId };
