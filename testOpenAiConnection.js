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

// Тестируем подключение к OpenAI
const testOpenAiConnection = httpsCallable(functions, 'testOpenAiConnection');

console.log('Testing OpenAI connection...');

testOpenAiConnection()
  .then((result) => {
    console.log('OpenAI Connection Test Result:', result.data);
  })
  .catch((error) => {
    console.error('OpenAI Connection Test Error:', error);
  });

// Также тестируем основную функцию
const callFunction = httpsCallable(functions, 'getOpenAiTranslation');

setTimeout(() => {
  console.log('\nTesting translation function...');
  
  callFunction({
    prompt: 'Hello, how are you?',
    targetLanguage: 'ru',
  })
    .then((result) => {
      console.log('Translation Function Result:', result.data);
    })
    .catch((error) => {
      console.error('Translation Function Error:', error);
    });
}, 2000); 