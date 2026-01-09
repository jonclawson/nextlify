import type { Metadata } from 'next'

export const metadata: Metadata = {
  title: 'Hello World - Next.js Netlify',
  description: 'A simple hello world app deployed on Netlify',
}

export default function RootLayout({
  children,
}: {
  children: React.ReactNode
}) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  )
}

