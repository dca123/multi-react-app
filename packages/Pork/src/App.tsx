import "./App.css";
import { Routes, Route } from "react-router-dom";
import { LovePorkPage } from "./pages/LovePork";
import { HomePage } from "./pages/Home";

function App() {
  return (
    <Routes>
      <Route path="/" element={<HomePage />} />
      <Route path="why" element={<LovePorkPage />} />
    </Routes>
  );
}

export default App;
