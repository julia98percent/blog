import { useState, useEffect } from 'react';
import ArticleList from '@components/ArticleList';
import type { ArticleCardType } from '@components/ArticleList';
import { getArticleCardListFromCategory } from '../apis/get';
import { useParams } from 'react-router-dom';

const KOR_CATEGORY_NAME = {
  undefined: '전체 글',
  client: '클라이언트',
  server: '서버',
  'problem-solving': '문제풀이',
  ect: '기타',
};

const MainPage = () => {
  const { category } = useParams();
  const [list, setList] = useState<null | ArticleCardType[]>(null);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const data = await getArticleCardListFromCategory(category);
        setList(data);
      } catch (error) {
        console.error('Error fetching data:', error);
      }
    };

    fetchData();
  }, [category]);

  if (list == null) {
    return '로딩 중';
  }

  return (
    <div className="flex flex-col items-center ">
      <div className="mt-4 md:w-[720px] w-[80vw]">
        <p className="text-xl font-light mb-1">
          {KOR_CATEGORY_NAME[category]} ({list.length})
        </p>
        <ArticleList metadataList={list} />
      </div>
    </div>
  );
};

export default MainPage;
