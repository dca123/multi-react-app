import { Route, Routes } from "react-router-dom";
import "./App.css";
import { HomePage } from "./pages/Home";
import { LoveBeefPage } from "./pages/LoveBeef";

function App() {
  return (
    <Routes>
      <Route path="/" element={<HomePage />} />
      <Route path="/beef" element={<LoveBeefPage />} />
    </Routes>
  );
}

export default App;
