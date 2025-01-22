import { LanguageProvider } from './context/LanguageContext';
import LanguageSelector from './components/LanguageSelector';
import About from './components/About';
// ... otros imports

function App() {
  return (
    <LanguageProvider>
      <div className="App">
        {/* ... otros componentes */}
        <LanguageSelector />
        <About />
        {/* ... otros componentes */}
      </div>
    </LanguageProvider>
  );
}

export default App; 