
const translations = {
    en: {
        'nav-home': 'Home',
        'nav-about': 'About me',
        'nav-skills': 'Skills',
        'nav-portfolio': 'Portfolio',
        'nav-contact': 'Contact',
        'home-title': 'Analyst in Computer Systems \uD83D\uDCBB',
        'home-subtitle': 'Developer Full Stack',
        'about-title': 'About Me',
        'about-p1': 'I am a systems analyst and full-stack developer specializing in building scalable business applications, SaaS platforms, and automation systems.',
        'about-p2': 'My primary expertise is in the .NET ecosystem with C#, where I develop robust backend systems and APIs. I also work extensively with Python using frameworks such as FastAPI to build modern web services and data-driven platforms.',
        'about-p3': 'I have strong experience working with relational databases including SQL Server and PostgreSQL, designing optimized schemas, writing advanced queries, triggers, and automation logic to support enterprise-level applications.',
        'about-p4': 'In addition, I build multiplatform interfaces using Flutter and Dart, allowing applications to run on web and mobile from a single codebase.',
        'about-p5': 'My stack also includes Docker, Firebase, and modern cloud-ready architectures. I focus heavily on automation, system integration, and building tools that help businesses improve efficiency and decision-making.',
        'about-p6': 'Beyond business software, I also develop game mechanics and gameplay systems using the Godot Engine.',
        'skills-core-title': 'Core Technologies',
        'skills-game-title': 'Game Development',
        'skills-game-desc': 'I also develop game mechanics and gameplay logic using the Godot Engine.',
        'skills-methods-title': 'Methodologies and Analysis',
        'featured-demos-title': 'Featured Software Demos',
        'demo1-title': 'Webmoderna Ecommerce Demo',
        'demo1-desc': 'A complete modern e-commerce solution with sleek UI and robust business logic.',
        'demo2-title': 'Dental Clinic Demo',
        'demo2-desc': 'A specialized management system for dental clinics with appointment scheduling.',
        'demo3-title': 'Restaurant / Bar Demo',
        'demo3-desc': 'A digital menu and order management platform for restaurants and bars.',
        'demo4-title': 'Enterprise CRM Demo',
        'demo4-desc': 'Customer relationship management dashboard for enterprise analytics and tracking.',
        'demo5-title': 'Automation SaaS Demo',
        'demo5-desc': 'An automation platform designed to streamline business workflows.',
        'demo-btn': 'Live Demo <i class="fas fa-external-link-alt"></i>',
        'portfolio-title': 'Portfolio',
        'proj1-title': 'Stock Control System',
        'proj2-title': 'University Projects',
        'proj3-title': 'Interactive Forensic Analysis System with SQL Server and Python',
        'contact-title': "Let's Connect"
    },
    es: {
        'nav-home': 'Inicio',
        'nav-about': 'Sobre mí',
        'nav-skills': 'Habilidades',
        'nav-portfolio': 'Portafolio',
        'nav-contact': 'Contacto',
        'home-title': 'Analista en Sistemas de Computación \uD83D\uDCBB',
        'home-subtitle': 'Desarrollador Full Stack',
        'about-title': 'Sobre Mí',
        'about-p1': 'Soy un analista de sistemas y desarrollador full-stack especializado en construir aplicaciones empresariales escalables, plataformas SaaS y sistemas de automatización.',
        'about-p2': 'Mi experiencia principal está en el ecosistema .NET con C#, donde desarrollo sistemas backend y APIs robustas. También trabajo extensamente con Python usando frameworks como FastAPI para construir servicios web modernos y plataformas orientadas a datos.',
        'about-p3': 'Tengo fuerte experiencia trabajando con bases de datos relacionales, incluyendo SQL Server y PostgreSQL, diseñando esquemas optimizados, escribiendo consultas avanzadas, triggers y lógica de automatización para respaldar aplicaciones a nivel empresarial.',
        'about-p4': 'Además, construyo interfaces multiplataforma usando Flutter y Dart, permitiendo que las aplicaciones corran en la web y dispositivos móviles desde un mismo código fuente.',
        'about-p5': 'Mi stack también incluye Docker, Firebase y arquitecturas modernas preparadas para la nube. Me enfoco fuertemente en automatización, integración de sistemas y creación de herramientas que ayudan a las empresas a mejorar la eficiencia y la toma de decisiones.',
        'about-p6': 'Más allá del software empresarial, también desarrollo mecánicas y sistemas de juego utilizando Godot Engine.',
        'skills-core-title': 'Tecnologías Principales',
        'skills-game-title': 'Desarrollo de Videojuegos',
        'skills-game-desc': 'También desarrollo mecánicas de juego y lógica de gameplay mediante Godot Engine.',
        'skills-methods-title': 'Metodologías y Análisis',
        'featured-demos-title': 'Demos de Software Destacados',
        'demo1-title': 'Demo Ecommerce Webmoderna',
        'demo1-desc': 'Una solución completa de e-commerce moderno con una interfaz elegante y lógica de negocios robusta.',
        'demo2-title': 'Demo Clínica Dental',
        'demo2-desc': 'Un sistema de gestión especializado para clínicas dentales con programación de citas.',
        'demo3-title': 'Demo Restaurante / Bar',
        'demo3-desc': 'Una plataforma digital de menú y gestión de pedidos para restaurantes y bares.',
        'demo4-title': 'Demo CRM Empresarial',
        'demo4-desc': 'Panel de control de relaciones con clientes para analíticas y seguimiento empresarial.',
        'demo5-title': 'Demo SaaS de Automatización',
        'demo5-desc': 'Una plataforma de automatización diseñada para optimizar flujos de trabajo empresariales.',
        'demo-btn': 'Ver Demo <i class="fas fa-external-link-alt"></i>',
        'portfolio-title': 'Portafolio',
        'proj1-title': 'Sistema de Control de Stock',
        'proj2-title': 'Proyectos Universitarios',
        'proj3-title': 'Sistema Interactivo de Análisis Forense con SQL Server y Python',
        'contact-title': 'Conectemos'
    }
};

let currentLang = "en";
const langToggle = document.getElementById("lang-toggle");

function updateLanguage(lang) {
    document.querySelectorAll("[data-i18n]").forEach(el => {
        const key = el.getAttribute("data-i18n");
        if (translations[lang] && translations[lang][key]) {
            el.innerHTML = translations[lang][key];
        }
    });
}

if (langToggle) {
    langToggle.addEventListener("click", () => {
        currentLang = currentLang === "en" ? "es" : "en";
        updateLanguage(currentLang);
        langToggle.textContent = currentLang === "en" ? "EN / ES" : "ES / EN";
    });
}

// Initial language setup
updateLanguage(currentLang);

// Existing code below:

const translations = {
    en: {
        'nav-home': 'Home',
        'nav-about': 'About me',
        'nav-skills': 'Skills',
        'nav-portfolio': 'Portfolio',
        'nav-contact': 'Contact',
        'home-title': 'Analyst in Computer Systems \uD83D\uDCBB',
        'home-subtitle': 'Developer Full Stack',
        'about-title': 'About Me',
        'about-p1': 'I am a systems analyst and full-stack developer specializing in building scalable business applications, SaaS platforms, and automation systems.',
        'about-p2': 'My primary expertise is in the .NET ecosystem with C#, where I develop robust backend systems and APIs. I also work extensively with Python using frameworks such as FastAPI to build modern web services and data-driven platforms.',
        'about-p3': 'I have strong experience working with relational databases including SQL Server and PostgreSQL, designing optimized schemas, writing advanced queries, triggers, and automation logic to support enterprise-level applications.',
        'about-p4': 'In addition, I build multiplatform interfaces using Flutter and Dart, allowing applications to run on web and mobile from a single codebase.',
        'about-p5': 'My stack also includes Docker, Firebase, and modern cloud-ready architectures. I focus heavily on automation, system integration, and building tools that help businesses improve efficiency and decision-making.',
        'about-p6': 'Beyond business software, I also develop game mechanics and gameplay systems using the Godot Engine.',
        'skills-core-title': 'Core Technologies',
        'skills-game-title': 'Game Development',
        'skills-game-desc': 'I also develop game mechanics and gameplay logic using the Godot Engine.',
        'skills-methods-title': 'Methodologies and Analysis',
        'featured-demos-title': 'Featured Software Demos',
        'demo1-title': 'Webmoderna Ecommerce Demo',
        'demo1-desc': 'A complete modern e-commerce solution with sleek UI and robust business logic.',
        'demo2-title': 'Dental Clinic Demo',
        'demo2-desc': 'A specialized management system for dental clinics with appointment scheduling.',
        'demo3-title': 'Restaurant / Bar Demo',
        'demo3-desc': 'A digital menu and order management platform for restaurants and bars.',
        'demo4-title': 'Enterprise CRM Demo',
        'demo4-desc': 'Customer relationship management dashboard for enterprise analytics and tracking.',
        'demo5-title': 'Automation SaaS Demo',
        'demo5-desc': 'An automation platform designed to streamline business workflows.',
        'demo-btn': 'Live Demo <i class="fas fa-external-link-alt"></i>',
        'portfolio-title': 'Portfolio',
        'proj1-title': 'Stock Control System',
        'proj2-title': 'University Projects',
        'proj3-title': 'Interactive Forensic Analysis System with SQL Server and Python',
        'contact-title': "Let's Connect"
    },
    es: {
        'nav-home': 'Inicio',
        'nav-about': 'Sobre mí',
        'nav-skills': 'Habilidades',
        'nav-portfolio': 'Portafolio',
        'nav-contact': 'Contacto',
        'home-title': 'Analista en Sistemas de Computación \uD83D\uDCBB',
        'home-subtitle': 'Desarrollador Full Stack',
        'about-title': 'Sobre Mí',
        'about-p1': 'Soy un analista de sistemas y desarrollador full-stack especializado en construir aplicaciones empresariales escalables, plataformas SaaS y sistemas de automatización.',
        'about-p2': 'Mi experiencia principal está en el ecosistema .NET con C#, donde desarrollo sistemas backend y APIs robustas. También trabajo extensamente con Python usando frameworks como FastAPI para construir servicios web modernos y plataformas orientadas a datos.',
        'about-p3': 'Tengo fuerte experiencia trabajando con bases de datos relacionales, incluyendo SQL Server y PostgreSQL, diseñando esquemas optimizados, escribiendo consultas avanzadas, triggers y lógica de automatización para respaldar aplicaciones a nivel empresarial.',
        'about-p4': 'Además, construyo interfaces multiplataforma usando Flutter y Dart, permitiendo que las aplicaciones corran en la web y dispositivos móviles desde un mismo código fuente.',
        'about-p5': 'Mi stack también incluye Docker, Firebase y arquitecturas modernas preparadas para la nube. Me enfoco fuertemente en automatización, integración de sistemas y creación de herramientas que ayudan a las empresas a mejorar la eficiencia y la toma de decisiones.',
        'about-p6': 'Más allá del software empresarial, también desarrollo mecánicas y sistemas de juego utilizando Godot Engine.',
        'skills-core-title': 'Tecnologías Principales',
        'skills-game-title': 'Desarrollo de Videojuegos',
        'skills-game-desc': 'También desarrollo mecánicas de juego y lógica de gameplay mediante Godot Engine.',
        'skills-methods-title': 'Metodologías y Análisis',
        'featured-demos-title': 'Demos de Software Destacados',
        'demo1-title': 'Demo Ecommerce Webmoderna',
        'demo1-desc': 'Una solución completa de e-commerce moderno con una interfaz elegante y lógica de negocios robusta.',
        'demo2-title': 'Demo Clínica Dental',
        'demo2-desc': 'Un sistema de gestión especializado para clínicas dentales con programación de citas.',
        'demo3-title': 'Demo Restaurante / Bar',
        'demo3-desc': 'Una plataforma digital de menú y gestión de pedidos para restaurantes y bares.',
        'demo4-title': 'Demo CRM Empresarial',
        'demo4-desc': 'Panel de control de relaciones con clientes para analíticas y seguimiento empresarial.',
        'demo5-title': 'Demo SaaS de Automatización',
        'demo5-desc': 'Una plataforma de automatización diseñada para optimizar flujos de trabajo empresariales.',
        'demo-btn': 'Ver Demo <i class="fas fa-external-link-alt"></i>',
        'portfolio-title': 'Portafolio',
        'proj1-title': 'Sistema de Control de Stock',
        'proj2-title': 'Proyectos Universitarios',
        'proj3-title': 'Sistema Interactivo de Análisis Forense con SQL Server y Python',
        'contact-title': 'Conectemos'
    }
};

let currentLang = "en";
const langToggle = document.getElementById("lang-toggle");

function updateLanguage(lang) {
    document.querySelectorAll("[data-i18n]").forEach(el => {
        const key = el.getAttribute("data-i18n");
        if (translations[lang] && translations[lang][key]) {
            el.innerHTML = translations[lang][key];
        }
    });
}

if (langToggle) {
    langToggle.addEventListener("click", () => {
        currentLang = currentLang === "en" ? "es" : "en";
        updateLanguage(currentLang);
        langToggle.textContent = currentLang === "en" ? "EN / ES" : "ES / EN";
    });
}

// Initial language setup
updateLanguage(currentLang);

// Existing code below:
const stockPhotosContainer = document.getElementById('stockPhotos');
const photosFolder = 'Fotos de Control de stock/';

const photoNames = [
    '1.png',
    '2.png',
    '3.png',
    '4.png',
    '5.png',
    '6.png',
    '7.png'
];

photoNames.forEach(photoName => {
    const img = document.createElement('img');
    img.src = photosFolder + photoName;
    img.alt = 'Captura de pantalla del Sistema de Control de Stock';
    stockPhotosContainer.appendChild(img);
}); 