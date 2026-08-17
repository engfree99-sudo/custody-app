# دفتر العهدة — GitHub / Codespaces / APK

هذه النسخة مجهزة للعمل أونلاين على GitHub وبناء APK تلقائيًا بواسطة GitHub Actions.

## رفع المشروع
ارفع **محتويات هذا المجلد** إلى Repository جديد، بحيث يظهر في جذر Repository:
- `.github`
- `.devcontainer`
- `www`
- `package.json`
- `capacitor.config.json`

لا تضع مجلد `custody-app` داخل مجلد آخر في GitHub.

## Codespaces
من Repository:
`Code -> Codespaces -> Create codespace on main`

بعد فتح Codespace، البيئة مجهزة بـ Node.js 20 وJDK 17.

يمكن تشغيل:
```bash
chmod +x setup-codespaces.sh
./setup-codespaces.sh
```

## بناء APK أونلاين
بعد رفع المشروع إلى GitHub:
1. افتح `Actions`.
2. اختر `Build Android APK`.
3. اضغط `Run workflow`.
4. بعد نجاح البناء افتح الـ Run.
5. من `Artifacts` حمّل `custody-app-debug-apk`.
6. فك ZIP وستجد `app-debug.apk`.

وأي `push` جديد إلى `main` سيشغّل بناء APK تلقائيًا.

## التطبيق
- الاسم: دفتر العهدة
- App ID: `com.custodytracker.app`
- التخزين الحالي: LocalStorage على الجهاز.
- تصدير Excel يعتمد على مكتبة SheetJS من CDN، ولذلك يحتاج إنترنت أثناء تحميل المكتبة.
