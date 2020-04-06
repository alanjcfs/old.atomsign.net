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
      I'm weird.
    </p>
    <p>
      I studied Biochemistry before making the jump into programming. I took a
      few CS courses, wrangled with the computers, and now I'm here.
    </p>
    <div style={{ maxWidth: `300px`, marginBottom: `1.45rem` }}>
      <Image />
    </div>
    <p>
      No, I'm not in Paris.
    </p>
    <p>
      As of 6 Apr 2020, it the time of the coronavirus. I live in San
      Francisco; I grew up in East Bay.
    </p>
    <Link to="/page-2/">Next</Link>
  </Layout>
)

export default IndexPage
