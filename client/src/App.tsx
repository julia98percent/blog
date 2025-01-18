import MainPage from '@pages/MainPage';
import AboutMePage from '@pages/AboutMePage';
import { Routes, Route } from 'react-router-dom';
import NaviBar from '@components/NaviBar';
import ArticlePage from '@pages/ArticlePage';

function App() {
  return (
    <>
      <NaviBar />

      <Routes>
        {/* for home page routing*/}
        <Route
          path="/"
          element={
            <div className="p-8 pt-0 w-screen max-w-screen-lg mx-auto my-0 h-full">
              <MainPage />
            </div>
          }
        />
        <Route
          path=":category"
          element={
            <div className="p-8 pt-0 w-screen max-w-screen-lg mx-auto my-0 h-full">
              <MainPage />
            </div>
          }
        />
        <Route path="/post/:id" element={<ArticlePage />} />
        <Route
          path="/about-me"
          element={
            <div className="p-8 pt-0 w-screen max-w-screen-lg mx-auto my-0 h-full flex justify-center items-center">
              <AboutMePage />
            </div>
          }
        />
      </Routes>
    </>
  );
}

export default App;
