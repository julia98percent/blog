import MainPage from '@pages/MainPage.tsx';
import { Routes, Route } from 'react-router-dom';

function App() {
  return (
    <>
      <Routes>
        <Route
          path="/"
          element={
            <div className="mt-8 w-full">
              <MainPage />
            </div>
          }
        />
        <Route
          path="/study"
          element={<div className="mt-8 w-full">공부</div>}
        />
      </Routes>
    </>
  );
}

export default App;
