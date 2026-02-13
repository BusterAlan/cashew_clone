# Cashew Clone

Clon de la aplicación de finanzas personal [Cashew](https://github.com/jameskokoska/Cashew), desarrollado desde cero en Flutter con enfoque en arquitectura modular y componentes reutilizables.

## 📋 Descripción

Aplicación de gestión financiera personal que replica las funcionalidades principales de Cashew. El proyecto está construido con una arquitectura limpia y modular, utilizando paquetes especializados para el manejo de navegación, estado y componentes de UI.

## 🏗️ Arquitectura y Organización

### Estructura del Proyecto

```
lib/
├── extensions/          # Extensiones de tipos nativos
├── pages/              # Pantallas de la aplicación
│   ├── budget/         # Módulo de presupuesto
│   ├── home/           # Pantalla principal
│   ├── more_actions/   # Más acciones y configuración
│   └── transaction/    # Gestión de transacciones
├── routes/             # Configuración de navegación
├── theme/              # Tema personalizado de la app
└── widgets/            # Componentes reutilizables
    └── more_actions/   # Widgets específicos de "Más acciones"
```

### Patrones de Diseño

- **Modularidad**: Código organizado por características y responsabilidades
- **Componentización**: Widgets reutilizables y especializados
- **Separación de responsabilidades**: Lógica de negocio, UI y navegación desacopladas

## 📦 Paquetes Principales

### Navegación
- **auto_route** (^11.1.0): Sistema de navegación declarativo y type-safe
  - Generación automática de rutas
  - Navegación con tabs
  - Deep linking support

### Estado
- **flutter_bloc** (^9.1.1): Gestión de estado reactivo
  - Separación entre lógica y UI
  - Facilita testing
  - Patrón BLoC/Cubit

### Persistencia
- **hive_ce** (^2.19.3): Base de datos local NoSQL
  - Almacenamiento key-value
  - Alto rendimiento
  - Soporte para tipos complejos

### Gráficas
- **syncfusion_flutter_charts** (^32.2.3): Visualización de datos financieros
  - Gráficas de línea y circular
  - Animaciones fluidas
  - Personalización completa

### Utilidades
- **url_launcher** (^6.3.2): Apertura de URLs externas
  - Navegación a FAQ
  - Enlaces a sitios web
  - Integración con navegador del sistema

## 🎨 Sistema de Temas

### Implementación Personalizada

El proyecto incluye un sistema de temas personalizado implementado en `CashewThemes`:

```dart
class CashewThemes {
  static ThemeData dark(BuildContext context) => ThemeData.dark().copyWith(
    // Configuración personalizada de componentes
  );
}
```

**Características:**
- Modo oscuro por defecto
- Personalización de componentes Material
- Estilos consistentes en toda la app
- Colores y tipografía unificados

**Componentes Estilizados:**
- `IconButtonTheme`: Botones de iconos con bordes redondeados
- `BottomNavigationBarTheme`: Barra de navegación inferior personalizada
- `ListTileTheme`: Tiles con bordes y estilos consistentes

## 🧩 Widgets Utilizados

### Widgets de Material Design

#### Estructura y Layout
- **Scaffold**: Estructura base de cada pantalla con AppBar, body y FAB
- **AppBar**: Barra superior personalizada con título y acciones
- **BottomNavigationBar**: Navegación entre secciones principales
- **FloatingActionButton**: Botón de acción rápida para agregar transacciones

#### Navegación
- **AutoTabsScaffold**: Scaffold con tabs integrado de auto_route
- **IconButton**: Botones de acciones en AppBar y otras áreas
- **InkWell**: Áreas clickeables con efecto ripple

#### Contenedores y Layout
- **Container**: Contenedor básico para widgets con decoración
- **DecoratedBox**: Contenedores con decoración (bordes, gradientes)
- **Padding**: Espaciado interno de widgets
- **SizedBox**: Espaciado fijo y dimensiones específicas
- **Row**: Disposición horizontal de widgets
- **Column**: Disposición vertical de widgets
- **Expanded**: Expansión de widgets en Row/Column
- **Flexible**: Flexibilidad en la distribución de espacio

#### Listas y Scrolling
- **ListView.separated**: Listas con separadores automáticos
- **ListTile**: Item estándar de lista con leading, title y subtitle

#### Texto e Imágenes
- **Text**: Visualización de texto con estilos del tema
- **Icon**: Iconos de Material Design

#### Formularios e Interacción
- **IconButton.outlined**: Botón de icono con borde

### Widgets Personalizados

#### CashewAppBar
```dart
class CashewAppBar extends StatelessWidget implements PreferredSizeWidget
```
**Uso:** Barra superior consistente en todas las pantallas
- Altura personalizada de 75px
- Título con estilo bold
- Acciones customizables
- Reutilizable en toda la app

**Implementación en pantallas:**
```dart
CashewAppBar(
  titleText: "Inicio",
  actions: [
    IconButton(
      icon: Icon(Icons.density_medium),
      onPressed: () => _onPressed(context),
    ),
  ],
)
```

#### ProListTile
**Uso:** Promoción de suscripción Pro
- Gradiente personalizado (rosa y azul)
- Diseño atractivo con badge
- Navegación a página de suscripción
- Altura fija de 125px

#### Secciones Modulares (More Actions)

**AboutAppObservationsSection**
- Layout horizontal con dos ListTiles
- "Acerca de Cashew" y "Observaciones"
- Distribución equitativa con `Expanded`

**CalendarRegisterSection**
- Acceso a calendario y registro
- Layout horizontal con separación

**NotificationsCopySection**
- Gestión de notificaciones y copias
- Consistente con otras secciones

**SubscriptionsScheduledSection**
- Suscripciones y tareas programadas
- Grid de acceso rápido

**ObjectivesLoansSection**
- Objetivos financieros y préstamos
- Organización horizontal

**EditMenuSection**
- Grid de 4 elementos (Cuentas, Presupuestos, Categorías, Títulos)
- Contenedores con bordes personalizados
- Layout responsivo con `Expanded`
- Iconos y texto centrados

**ConfigListTile**
- Acceso a configuración
- Subtítulo descriptivo
- Icono de settings

**ExpensesSummaryListTile**
- Resumen de gastos totales
- Acceso a estadísticas

### Extensiones Personalizadas

#### SizedBoxExtension
```dart
extension SizedBoxExtension on double {
  get h => SizedBox(height: this);
  get w => SizedBox(width: this);
}
```
**Uso:** Sintaxis simplificada para espaciado
```dart
10.h  // SizedBox(height: 10)
20.w  // SizedBox(width: 20)
```

## 📱 Pantallas Implementadas

### PanelPage
**Función:** Contenedor principal con tabs
- BottomNavigationBar con 4 secciones
- FloatingActionButton contextual
- AutoTabsScaffold para navegación
- Gestión de visibilidad del FAB

### HomePage
**Función:** Dashboard principal
- Vista general de finanzas
- Acceso rápido a funciones principales
- CashewAppBar personalizado

### TransactionsPage
**Función:** Lista de transacciones
- Filtros y búsqueda
- Visualización de movimientos
- Acciones de filtrado

### BudgetPage
**Función:** Gestión de presupuestos
- Creación de nuevos presupuestos
- Botón de agregar presupuesto
- Edición de presupuestos existentes

### MoreActionsPage
**Función:** Hub de configuración y herramientas
- 9 secciones modulares
- Acceso a FAQ externo (url_launcher)
- Grid de opciones de edición
- Promoción de suscripción Pro

### ProSubscriptionPage
**Función:** Información de suscripción premium
- Detalles de características Pro
- Opciones de suscripción

### AddTransactionPage
**Función:** Agregar nueva transacción
- Formulario de ingreso
- Validación de datos

### SearchTransactionPage
**Función:** Búsqueda de transacciones
- Filtros avanzados
- Resultados en tiempo real

## 🛣️ Sistema de Navegación

### Configuración de Rutas

```dart
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: PanelRoute.page,
      path: RouteNames.panel,
      initial: true,
      children: [
        AutoRoute(page: HomeRoute.page, ...),
        AutoRoute(page: TransactionsRoute.page, ...),
        AutoRoute(page: BudgetRoute.page, ...),
        AutoRoute(page: MoreActionsRoute.page, ...),
      ],
    ),
    // Rutas secundarias
  ];
}
```

**Características:**
- Rutas anidadas para tabs
- Type-safe navigation
- Generación automática de código
- Deep linking ready

## 🎯 Características Implementadas

- ✅ Navegación por tabs fluida
- ✅ Tema oscuro personalizado
- ✅ Componentes reutilizables y modulares
- ✅ Integración con navegador externo
- ✅ Arquitectura escalable
- ✅ Preparado para gestión de estado con BLoC
- ✅ Base de datos local con Hive
- ✅ Widgets personalizados consistentes

## 🚀 Próximos Pasos

- [ ] Implementación de lógica de negocio con BLoC
- [ ] Integración completa de Hive para persistencia
- [ ] Gráficas financieras con Syncfusion
- [ ] Formularios de transacciones funcionales
- [ ] Sistema de categorías y etiquetas
- [ ] Exportación/Importación de datos

## 🛠️ Desarrollo

### Requisitos
- Flutter SDK ^3.10.0
- FVM (Flutter Version Manager) - Versión 3.38.7

### Comandos Útiles

```bash
# Instalar dependencias
flutter pub get

# Generar código de rutas
flutter pub run build_runner build --delete-conflicting-outputs

# Ejecutar app
flutter run

# Análisis de código
flutter analyze
```

## 📄 Licencia

Proyecto educativo - Uso académico