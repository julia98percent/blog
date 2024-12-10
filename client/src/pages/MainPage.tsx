import { useState, useEffect } from 'react';
import axios from 'axios';

const MainPage = () => {
  const [list, setList] = useState(null);

  const getAllArticles = () => {
    const response = axios
      .get(import.meta.env.VITE_SERVER_URL + '/articles')
      .then((item) => item?.data);
    return response;
  };

  useEffect(() => {
    getAllArticles().then((item) => {
      setList(item);
    });
  }, []);

  if (list == null) {
    return '로딩 중';
  }

  return (
    <div className="flex flex-col items-center">
      {list.map((item, idx) => (
        <div key={'wrapper-' + idx}>
          <div key={'title-' + idx}>{item.title}</div>
          <div key={'content-' + idx}>{item.content}</div>
        </div>
      ))}
    </div>
  );
};

export default MainPage;
