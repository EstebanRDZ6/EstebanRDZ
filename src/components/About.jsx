import React, { useContext } from 'react';
import { LanguageContext } from '../context/LanguageContext';
import { translations } from '../translations/translations';

const About = () => {
  const { language } = useContext(LanguageContext);
  const { about } = translations[language];

  return (
    <section id="about" className="about section">
      <div className="container">
        <h2>{about.title}</h2>
        <div className="about-content">
          <p>{about.description}</p>
        </div>
      </div>
    </section>
  );
};

export default About; 