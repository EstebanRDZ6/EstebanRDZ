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