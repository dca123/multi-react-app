import { useNavigate } from "react-router-dom";
import reactLogo from "../assets/react.svg";

export const HomePage = () => {
  const navigate = useNavigate();
  return (
    <div className="App">
      <div>
        <a href="https://vitejs.dev" target="_blank">
          <img src="/vite.svg" className="logo" alt="Vite logo" />
        </a>
        <a href="https://reactjs.org" target="_blank">
          <img src={reactLogo} className="logo react" alt="React logo" />
        </a>
      </div>
      <h1>I love Meat</h1>
      <div className="card">
        <a href="/pork">
          <p>Why I love Pork</p>
        </a>

        <button onClick={() => navigate("beef")}>Why I love Beef</button>
      </div>
    </div>
  );
};
