import React from "react"
import { Link } from "gatsby"

import Layout from "../components/layout"
import Image from "../components/image"
import SEO from "../components/seo"

const IndexPage = () => (
  <Layout>
    <SEO description="An introduction to Alan" title="Home" />
    <div style={{ display: "flex" }}>
      <div
        style={{ maxWidth: `300px`, marginBottom: `1.45rem` }}
        className="intro-image"
      >
        <Image />
      </div>
      <div>
        <h1>Hello.</h1>
        <p>
          I studied Biochemistry before making the jump into programming. I took
          a few CS courses, wrangled with the computers, and now I&rsquo;m here.
        </p>
        <p>
          I was in Paris in July 2019, before the COVID era, standing on top of
          La Galerie overlooking the city of Paris and the famous Eiffel Tower.
        </p>
        <p>I live in San Francisco; I grew up in East Bay.</p>
      </div>
    </div>
    <Link to="/page-2/">Next</Link>
  </Layout>
)

export default IndexPage
