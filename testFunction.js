const admin = require('firebase-admin');

const serviceAccount = require('./tarot-ai-app-com-firebase-adminsdk-fbsvc-d6082c9ded.json');

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
});

const { getFunctions, httpsCallable } = require('firebase/functions');
const { initializeApp: initClientApp } = require('firebase/app');

// Заполнено из google-services.json
const firebaseConfig = {
  apiKey: "AIzaSyDcWQMTDqI9fKp7aVxAffDhGaZ90OumQQQ",
  authDomain: "tarot-ai-app-com.firebaseapp.com",
  projectId: "tarot-ai-app-com",
  storageBucket: "tarot-ai-app-com.firebasestorage.app",
  messagingSenderId: "140390121261",
  appId: "1:140390121261:android:0b8a4172f6e0f529e95da4",
};

const app = initClientApp(firebaseConfig);
const functions = getFunctions(app, 'europe-west1');

console.log('Testing Firebase Functions connection...');

// Тест 1: Простой вызов
const callFunction = httpsCallable(functions, 'getOpenAiTranslation');

console.log('Calling getOpenAiTranslation...');
callFunction({
  prompt: 'Привет!',
  targetLanguage: 'ru',
})
  .then((result) => {
    console.log('✅ Function result:', result.data);
  })
  .catch((error) => {
    console.error('❌ Function error:', error);
    console.error('Error code:', error.code);
    console.error('Error message:', error.message);
    console.error('Error details:', error.details);
  });

// Тест 2: Проверка подключения к OpenAI
const testConnection = httpsCallable(functions, 'testOpenAiConnection');

console.log('Testing OpenAI connection...');
testConnection({})
  .then((result) => {
    console.log('✅ OpenAI connection test:', result.data);
  })
  .catch((error) => {
    console.error('❌ OpenAI connection test error:', error);
  }); 