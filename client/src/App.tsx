import './App.css';
import MainPage from './MainPage';

function App() {
  return (
    <>
      <div className="mt-8 w-full bg-white rounded-8">
        <MainPage />
      </div>
      <span className={'line-clamp-2 truncate break-all leading-normal'}>
        ㅁㅇㄹ
      </span>
    </>
  );
}

export default App;
