import { formatToYYYYMMDD } from '../utils/date';
import { Link } from 'react-router-dom';

export type ArticleCardType = {
  id: string;
  title: string;
  createdAt: Date;
  subtitle: string | null;
  category: string;
};

const ArticleList = ({ metadataList }: { metadataList: ArticleCardType[] }) => {
  return (
    <div className="flex flex-col divide-y divide-c-orange dark:divide-c-orange/40 gap-1">
      {metadataList.map(({ id, title, subtitle, createdAt }) => {
        return (
          <Link to={`/post/${id}`}>
            <div>
              <div className="mt-2">{formatToYYYYMMDD(createdAt)}</div>
              <h2>{title}</h2>
              <h4 className="mb-2 text-gray-600">{subtitle}</h4>
            </div>
          </Link>
        );
      })}
    </div>
  );
};

export default ArticleList;
