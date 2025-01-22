import React, { useContext } from 'react';
import { LanguageContext } from '../context/LanguageContext';

const LanguageSelector = () => {
  const { language, toggleLanguage } = useContext(LanguageContext);

  return (
    <button onClick={toggleLanguage} className="language-selector">
      {language === 'en' ? 'Español' : 'English'}
    </button>
  );
};

export default LanguageSelector; 