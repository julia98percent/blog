import { useState } from 'react';
import { Link } from 'react-router-dom';
import MenuIcon from '@assets/menu.svg?react';
import CloseIcon from '@assets/close.svg?react';
import { NAVI_INFO } from '.';

const MobileNaviBar = ({ emoji }: { emoji: String }) => {
  const [isOpen, setIsOpen] = useState(false);

  const handleIsOpenChange = () => setIsOpen((prev) => !prev);

  return (
    <nav
      className={`bg-light-bg dark:bg-dark-bg sticky top-0 overflow-y-hidden px-[4vw] py-2.5 border-b border-dark-bg/30 dark:border-light-bg/30  ${
        isOpen ? 'h-auto' : 'h-[50px]'
      }`}
    >
      <div className="flex items-center justify-between mb-[10px]">
        <Link to={'/'}>
          <h1 className="inline-block margin-0">
            {import.meta.env.VITE_BLOG_NAME}
          </h1>
          <span> {emoji}</span>
        </Link>
        <button onClick={handleIsOpenChange}>
          {isOpen ? (
            <CloseIcon className="stroke-dark-bg dark:stroke-light-bg" />
          ) : (
            <MenuIcon className="stroke-dark-bg dark:stroke-light-bg" />
          )}
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
};

export default MobileNaviBar;
