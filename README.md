# 🌊 Next.js Page Transitions with GSAP

Elevate your user experience with high-performance, aesthetically pleasing staggered page transitions built for modern Next.js applications.

## ✨ Features

- **🚀 GSAP Animations**: Silk-smooth animations powered by GreenSock's animation engine.
- **🎨 Staggered Columns**: A visually striking "shutter" effect that masks and reveals content during transitions.
- **⚡ Next.js Integration**: Seamlessly integrated with the Next.js App Router for consistent timing.
- **💅 Tailwind CSS 4**: Modern styling with the latest Tailwind features and performance improvements.
- **🎯 Custom Hook**: Easy-to-use `usePageTransition` hook for manual navigation control.

## 🛠️ Tech Stack

- **Framework**: [Next.js 15+](https://nextjs.org/) (App Router)
- **Animation**: [GSAP (GreenSock)](https://gsap.com/)
- **Styling**: [Tailwind CSS 4](https://tailwindcss.com/)
- **Language**: [TypeScript](https://www.typescriptlang.org/)
- **Fonts**: [Syne](https://fonts.google.com/specimen/Syne) (Display) & [DM Sans](https://fonts.google.com/specimen/DM+Sans) (Body)

## 🏁 Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/thakuma07/page-transition-main.git
cd page-transition
```

### 2. Install dependencies
```bash
npm install
```

### 3. Run the development server
```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) to see the application in action.

## 🏗️ Architecture

### `TransitionProvider.tsx`
The core component that wraps the entire application. It manages the transition state and provides a `navigateTo` function through context.

```tsx
// Example usage in layout.tsx
<TransitionProvider column={8}>
  <Nav />
  {children}
</TransitionProvider>
```

### `usePageTransition` Hook
Access the transition logic anywhere in your application.

```tsx
const { navigateTo } = usePageTransition();

// Trigger transition
<button onClick={() => navigateTo("/about")}>Go to About</button>
```

## 📂 Project Structure

- `/app`: Next.js App Router routes and global styles.
- `/src/components`:
  - `TransitionProvider.tsx`: The engine behind the animations.
  - `Nav.tsx`: Custom navigation component with transition triggers.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Built with ❤️ by Arkyadeep Pal
