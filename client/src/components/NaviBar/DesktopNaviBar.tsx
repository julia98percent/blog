import { Link } from 'react-router-dom';
import { NAVI_INFO } from '.';

const DesktopNaviBar = ({ emoji }: { emoji: String }) => {
  return (
    <nav
      className={
        'bg-light-bg dark:bg-dark-bg flex flex-row items-center justify-between sticky top-0 px-[4vw] h-[50px] border-b border-dark-bg/30 dark:border-light-bg/30'
      }
    >
      <Link to={'/'}>
        <h1 className="inline-block margin-0">
          {import.meta.env.VITE_BLOG_NAME}
        </h1>
        <span> {emoji}</span>
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

export default DesktopNaviBar;
