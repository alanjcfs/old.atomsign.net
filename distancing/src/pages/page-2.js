import React from "react"
import { Link } from "gatsby"

import Layout from "../components/layout"
import SEO from "../components/seo"

const Page2 = () => (
  <Layout>
    <SEO title="About Me" />
    <h1>Improv</h1>
    <p>I know ASL. I learned improv from Josh and Jules. And I want to practice more.</p>
    <Link to="/">Home</Link>
  </Layout>
)

export default Page2
