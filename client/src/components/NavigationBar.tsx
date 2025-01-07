import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import MenuIcon from '@assets/menu.svg?react';
import CloseIcon from '@assets/close.svg?react';

const NAVI_INFO = [
  { name: '클라이언트', url: 'client' },
  { name: '서버', url: 'server' },
  { name: '문제풀이', url: 'problem-solving' },
  // { name: '생각', url: 'thoughts' },
  // { name: '기타', url: 'ect' },
  { name: '율무?', url: 'about-me' },
];

const MOBILE_SIZE = 640;

const NavigationBar = () => {
  const [isOpen, setIsOpen] = useState(false);
  const [isMobile, setIsMobile] = useState(window.innerWidth < MOBILE_SIZE);

  const handleIsOpenChange = () => setIsOpen((prev) => !prev);

  const handleResize = () => {
    setIsMobile(window.innerWidth < MOBILE_SIZE);
  };

  useEffect(() => {
    window.addEventListener('resize', handleResize);
    return () => window.removeEventListener('resize', handleResize);
  }, []);

  if (isMobile) {
    return (
      <nav
        className={`sticky top-0 bg-white overflow-y-hidden px-5 py-2.5 border-b border-black ${
          isOpen ? 'h-auto' : 'h-[50px]'
        }`}
      >
        <div className="flex items-center justify-between mb-[10px]">
          <Link to={'/'}>
            <h1 className="margin-0">{import.meta.env.VITE_BLOG_NAME}</h1>
          </Link>
          <button onClick={handleIsOpenChange}>
            {isOpen ? <CloseIcon /> : <MenuIcon />}
          </button>
        </div>
        <div>
          <ul className="text-center">
            {NAVI_INFO.map(({ name, url }) => (
              <li className="group pb-1">
                <Link to={url}>
                  <span className="px-[10px] group-hover:highlighting">
                    {name}
                  </span>
                </Link>
              </li>
            ))}
          </ul>
        </div>
      </nav>
    );
  }
  return (
    <nav
      className={
        'flex flex-row items-center justify-between sticky top-0 bg-[#f7f6f0] px-[40px] py-2.5 border-b border-[#c8c8c8] '
      }
    >
      <Link to={'/'}>
        <h1 className="inline-block margin-0">
          {import.meta.env.VITE_BLOG_NAME}
        </h1>
        <span> 📝</span>
      </Link>
      <ul className="flex">
        {NAVI_INFO.map(({ name, url }) => (
          <li className="group">
            <Link to={url}>
              <span className="px-[10px] group-hover:highlighting">{name}</span>
            </Link>
          </li>
        ))}
      </ul>
    </nav>
  );
};

export default NavigationBar;
