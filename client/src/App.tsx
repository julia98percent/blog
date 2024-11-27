import MainPage from '@pages/MainPage.tsx';
import { Routes, Route } from 'react-router-dom';
import MemoListPage from '@pages/MemoListPage';

function App() {
  return (
    <>
      <Routes>
        <Route
          path="/"
          element={
            <div className="p-8 w-screen max-w-screen-lg mx-auto my-0 h-full flex justify-center items-center">
              <MainPage />
            </div>
          }
        />
        <Route path="/memoList" element={<MemoListPage />} />
        <Route
          path="/study"
          element={<div className="mt-8 w-full">공부</div>}
        />
      </Routes>
    </>
  );
}

export default App;
