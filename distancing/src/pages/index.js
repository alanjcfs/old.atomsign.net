import React from "react"
import { Link } from "gatsby"

import Layout from "../components/layout"
import Image from "../components/image"
import SEO from "../components/seo"

const IndexPage = () => (
  <Layout>
    <SEO description="An introduction to Alan"  title="Home" />
    <h1>Hey.</h1>
    <p>
      I'm deaf.
    </p>
    <p>
      I studied Biochemistry before making the jump into programming. I took a
      few CS courses, wrangled with the computers, and now I'm here.
    </p>
    <p>
      I was supposed to get a cochlear implant this year (2020), but the coronavirus, SARS-CoV-2, which causes COVID-19 ARDS disease in some people, interrupted my plans, as it did practically everyone else.
    </p>
    <div style={{ maxWidth: `300px`, marginBottom: `1.45rem` }}>
      <Image />
    </div>
    <p>
      I was in Paris in July 2019, before the COVID era, standing on top of La Galerie overlooking the city of Paris and the famous Eiffel Tower.
    </p>
    <p>
      I live in San Francisco; I grew up in East Bay.
    </p>
    <Link to="/page-2/">Next</Link>
  </Layout>
)

export default IndexPage
