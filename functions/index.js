/**
 * Import function triggers from their respective submodules:
 *
 * const {onCall} = require("firebase-functions/v2/https");
 * const {onDocumentWritten} = require("firebase-functions/v2/firestore");
 *
 * See a full list of supported triggers at https://firebase.google.com/docs/functions
 */

const functions = require("firebase-functions");
const admin = require("firebase-admin");
const {OpenAI} = require("openai");

admin.initializeApp();

// For cost control, you can set the maximum number of containers that can be
// running at the same time. This helps mitigate the impact of unexpected
// traffic spikes by instead downgrading performance. This limit is a
// per-function limit. You can override the limit for each function using the
// `maxInstances` option in the function's options, e.g.
// `onRequest({ maxInstances: 5 }, (req, res) => { ... })`.
// NOTE: setGlobalOptions does not apply to functions using the v1 API. V1
// functions should each use functions.runWith({ maxInstances: 10 }) instead.
// In the v1 API, each function can only serve one request per container, so
// this will be the maximum concurrent request count.
functions.runWith({maxInstances: 10});

// Create and deploy your first functions
// https://firebase.google.com/docs/functions/get-started

// exports.helloWorld = onRequest((request, response) => {
//   logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });

// Инициализируем OpenAI клиент с ключом, который мы добавили в секреты
const openai = new OpenAI({
  apiKey: functions.config().openai.key,
});

// Функция для тестирования подключения к OpenAI
exports.testOpenAiConnection = functions.region("europe-west1").https.onCall(async (data, context) => {
  console.log("[testOpenAiConnection] Testing OpenAI connection...");

  try {
    // Простой тест - запрашиваем список моделей
    const models = await openai.models.list();
    console.log("[testOpenAiConnection] Successfully connected to OpenAI");
    console.log("[testOpenAiConnection] Available models count:", models.data.length);

    return {
      success: true,
      message: "OpenAI connection successful",
      modelsCount: models.data.length,
      timestamp: new Date().toISOString(),
    };
  } catch (error) {
    console.error("[testOpenAiConnection] Error connecting to OpenAI:", {
      message: error.message,
      status: error.status,
      response: error.response && error.response.data,
      stack: error.stack,
    });

    return {
      success: false,
      error: error.message,
      status: error.status,
      timestamp: new Date().toISOString(),
    };
  }
});

// Создаем нашу облачную функцию
exports.getOpenAiTranslation = functions.region("europe-west1").https.onCall(async (data, context) => {
  const prompt = data.prompt;
  const targetLanguage = data.targetLanguage;

  console.log("[getOpenAiTranslation] called with:", {prompt, targetLanguage});

  if (!prompt || !targetLanguage) {
    console.error("[getOpenAiTranslation] Missing arguments", {prompt, targetLanguage});
    throw new functions.https.HttpsError(
        "invalid-argument",
        "The function must be called with two arguments 'prompt' and 'targetLanguage'.",
    );
  }

  try {
    console.log("[getOpenAiTranslation] Attempting to call OpenAI API...");
    const chatCompletion = await openai.chat.completions.create({
      messages: [{role: "user", content: prompt}],
      model: "gpt-4.1-nano", // gpt-4.1-nano
    });

    const translatedText = chatCompletion.choices[0].message.content;
    console.log("[getOpenAiTranslation] OpenAI response:", translatedText);
    return {translation: translatedText};
  } catch (error) {
    console.error("[getOpenAiTranslation] Error calling OpenAI API", {
      message: error.message,
      status: error.status,
      response: error.response && error.response.data,
      stack: error.stack,
    });
    throw new functions.https.HttpsError(
        "internal",
        `Failed to get translation: ${error.message}`,
    );
  }
});
