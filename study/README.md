# study

lib/
├── app/                      # Configurações e inicialização do app
│   ├── app.dart              # Widget principal com MaterialApp etc.
│   ├── router.dart           # Rotas e navegação
│   └── providers.dart        # Injeção de dependências globais (Riverpod, etc.)
├── features/                 # Organizado por funcionalidades
│   └── auth/                 # Exemplo: feature de autenticação
│       ├── data/             # Implementações concretas (repositories, datasources)
│       │   └── auth_repository_impl.dart
│       ├── domain/           # Regras de negócio (entidades, casos de uso, contratos)
│       │   ├── entities/
│       │   │   └── user.dart
│       │   ├── repositories/
│       │   │   └── auth_repository.dart
│       │   └── usecases/
│       │       └── sign_in.dart
│       ├── presentation/     # UI: widgets, screens, controllers (ViewModel)
│       │   ├── login_screen.dart
│       │   └── login_controller.dart
│       └── auth_providers.dart
├── shared/                   # Códigos reutilizáveis
│   ├── widgets/              # Componentes de UI reutilizáveis
│   ├── utils/                # Helpers, formatadores etc.
│   ├── themes/               # Cores, fontes e estilos
│   └── constants/            # Constantes globais
main.dart                     # Ponto de entrada da aplicação


## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
