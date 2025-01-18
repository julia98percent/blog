import { useState, useEffect } from 'react';
import MobileNaviBar from './MobileNaviBar';
import DesktopNaviBar from './DesktopNaviBar';

export const NAVI_INFO = [
  { name: '클라이언트', url: 'client' },
  { name: '서버', url: 'server' },
  { name: '문제풀이', url: 'problem-solving' },
  // { name: '생각', url: 'thoughts' },
  { name: '기타', url: 'ect' },
  { name: '율무?', url: 'about-me' },
];

const MOBILE_SIZE = 640;

const TITLE_EMOJI = ['🐰', '📝', '📚', '📖', '🤓', '🛠️', '😼'];

const getRandomEmoji = () => {
  const minute = new Date().getMinutes();
  const emojiIndex = minute % TITLE_EMOJI.length;

  return TITLE_EMOJI[emojiIndex];
};

const NaviBar = () => {
  const [isMobile, setIsMobile] = useState(window.innerWidth < MOBILE_SIZE);
  const [shownEmoji, setShownEmoji] = useState('');

  const handleResize = () => {
    setIsMobile(window.innerWidth < MOBILE_SIZE);
  };

  useEffect(() => {
    const randomEmoji = getRandomEmoji();
    setShownEmoji(randomEmoji);

    window.addEventListener('resize', handleResize);

    return () => window.removeEventListener('resize', handleResize);
  }, []);

  return isMobile ? (
    <MobileNaviBar emoji={shownEmoji} />
  ) : (
    <DesktopNaviBar emoji={shownEmoji} />
  );
};

export default NaviBar;
