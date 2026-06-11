import { createFileRoute } from "@tanstack/react-router";

export const Route = createFileRoute("/")({
  component: HomePage,
});

function HomePage() {
  return (
    <main>
      <h1>Astor Research</h1>
      <p>AI-powered crypto research platform</p>
      <span className="badge">Phase 0 — Foundation</span>
    </main>
  );
}
