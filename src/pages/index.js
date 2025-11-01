export default function Home() {
  return (
    <div style={{ textAlign: 'center', paddingTop: '100px' }}>
      <h1>🧠 ADHD Dopamine Shop</h1>
      <p>Welcome to your dopamine-friendly shopping playground!</p>
      <button onClick={() => alert('Checkout simulation complete! 🎉')}>
        Checkout
      </button>
    </div>
  );
}
