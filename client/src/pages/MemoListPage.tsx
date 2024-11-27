import CvIcon from '../assets/cv.svg?react';
import GithubIcon from '../assets/github.svg?react';
import XIcon from '../assets/x.svg?react';
import { Link } from 'react-router-dom';
import { useState, useEffect } from 'react';
import axios from 'axios';

const MemoListPage = () => {
  const [list, setList] = useState(null);

  const getAllMemos = () => {
    const response = axios
      .get(import.meta.env.VITE_SERVER_URL + '/articles')
      .then((item) => item?.data);
    return response;
  };

  useEffect(() => {
    getAllMemos().then((item) => {
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

export default MemoListPage;
