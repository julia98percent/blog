import CvIcon from '@assets/cv.svg?react';
import GithubIcon from '@assets/github.svg?react';
import XIcon from '@assets/x.svg?react';

const AboutMePage = () => {
  return (
    <div>
      <div className="flex flex-col items-center">
        <h2 className="title">채지원 | Yulia</h2>

        <ul className="grid grid-cols-3 mb-4">
          <li>
            <a target="_blank" href="https://github.com/julia98percent">
              <GithubIcon className="size-[50px]" />
            </a>
          </li>
          <li>
            <a target="_blank" href="https://x.com/julia98percent">
              <XIcon className="size-[50px]" />
            </a>
          </li>
          <li>
            <a target="_blank" href="#">
              <CvIcon className="size-[50px]" />
            </a>
          </li>
        </ul>
        <p className="pb-4 border-dashed border-b border-black">
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
          eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
          minim veniam, quis nostrud exercitation ullamco laboris nisi ut
          aliquip ex ea commodo consequat. Duis aute irure dolor in
          reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
          pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
          culpa qui officia deserunt mollit anim id est laborum."
        </p>
      </div>
    </div>
  );
};

export default AboutMePage;
