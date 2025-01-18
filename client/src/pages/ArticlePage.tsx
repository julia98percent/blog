import Markdown from 'react-markdown';
import { useParams } from 'react-router-dom';
import { getArticleFromId } from '../apis/get';
import { useState, useEffect } from 'react';
import { formatToYYYYMMDD } from '../utils/date';

const ArticlePage = () => {
  const { id } = useParams();
  let [articleData, setArticleData] = useState(null);

  useEffect(() => {
    getArticleFromId(id).then((data) => setArticleData(data));
  }, []);

  if (articleData) {
    return (
      <div className="flex flex-col items-center my-6">
        <div className="md:w-[720px] w-[80vw]">
          <div className="text-center mb-8">
            <p className="text-gray-600 mb-2">
              {formatToYYYYMMDD(articleData.createdDate)}
            </p>
            <h2 className="text-3xl font-semibold border-b border-divide-orange dark:border-divide-orange/40 pb-2">
              {articleData.title}
            </h2>
          </div>
          <Markdown className="prose dark:prose-invert">
            {articleData.content}
          </Markdown>
        </div>
      </div>
    );
  }
};

export default ArticlePage;
