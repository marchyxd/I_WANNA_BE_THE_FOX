# 🦊 I WANNA BE THE FOX – Chat Multicliente en Unity (UDP y WebSocket)

Este proyecto es una práctica completa de sistemas de comunicación en red para Unity. Se han implementado dos versiones de un **chat multicliente**: una usando **UDP con Unity Transport** y otra usando **WebSocket con NativeWebSocket**. Además, el juego está publicado y jugable online a través de GitHub Pages.

🌐 **Link del juego (WebGL):**  
👉 [Jugar en GitHub Pages](https://marchyxd.github.io/I_WANNA_BE_THE_FOX/)

---

## 🧠 Objetivos del proyecto

- Implementar un **chat multicliente básico** en Unity.
- Comprender y comparar **dos protocolos de red**:
  - UDP (sin conexión, rápido)
  - WebSocket (con conexión persistente, fiable)
- Diseñar una interfaz de usuario funcional para enviar y recibir mensajes.
- Simular un servidor local en ambos casos.
- Añadir control de conexión, reconexión y visualización en tiempo real.

---

## 🛰️ Comparativa: UDP vs WebSocket

| Característica       | UDP (Unity Transport)       | WebSocket (NativeWebSocket + Node.js)    |
|----------------------|-----------------------------|------------------------------------------|
| Tipo de conexión     | Sin conexión                | Conexión persistente                     |
| Fiabilidad           | No garantiza entrega        | Entrega garantizada (basado en TCP)      |
| Velocidad            | Muy alta                    | Alta                                     |
| Casos de uso ideales | Juegos en tiempo real, VOIP | Chats, apps web, sincronización de datos |
| Estado de conexión   | Manual (`IsCreated`)        | Automático (`OnOpen`, `OnClose`, etc.)   |
| Comunicación         | Local o LAN                 | LAN, remota y compatible con WebGL       |

---

## 📦 Estructura del proyecto

```bash
Assets/
├── Scripts/
│   ├── UDP/
│   │   ├── ClientManager.cs
│   │   └── ServerManager.cs
│   └── WebSocket/
│       └── WebSocketClient.cs
├── Scenes/
│   ├── UDPChatScene.unity
│   └── WebSocketChatScene.unity

```

## 🧪 Cómo probar

### ✅ Modo UDP

- Ejecuta una instancia en el Editor de Unity y otra como Build.
- Verifica que se reciben los mensajes correctamente (por ejemplo: `[Carlos]: Hola`).

### ✅ Modo WebSocket

- Ejecuta el servidor Node.js:

  ```bash
  node index.js
  ```
- Abre la escena WebSocketChatScene en Unity o carga el build WebGL

- Conéctate desde múltiples navegadores o instancias

## 🧱 Funcionalidades implementadas

- ✅ Chat multicliente con **UDP local**
- ✅ Chat multicliente con **WebSocket (local y remoto)**
- ✅ Interfaz con `InputField`, `ScrollView` y `Button`
- ✅ Muestra el nombre del remitente en cada mensaje
- ✅ Reconexión manual disponible en cliente WebSocket
- ✅ Compatible con WebGL (modo WebSocket)
