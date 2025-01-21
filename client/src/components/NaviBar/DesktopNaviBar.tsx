import { Link } from 'react-router-dom';
import { NAVI_INFO } from '.';

const DesktopNaviBar = ({ emoji }: { emoji: String }) => {
  return (
    <nav
      className={
        'bg-b-light dark:bg-b-dark flex flex-row items-center justify-between sticky top-0 px-[4vw] h-[50px] border-b border-b-dark/30 dark:border-b-light/30'
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
          <li className="group" key={`menu-${name}`}>
            <Link to={url}>
              <span className="px-[10px] group-hover:highlight">{name}</span>
            </Link>
          </li>
        ))}
      </ul>
    </nav>
  );
};

export default DesktopNaviBar;
