import React from "react"
import { Link } from "gatsby"

import Layout from "../components/layout"
import SEO from "../components/seo"

const Page2 = () => (
  <Layout>
    <SEO title="About Me" />
    <h1>Improv</h1>
    <p>
      I know ASL. I learned improv from Josh and Jules. And I want to practice
      more.
    </p>
    <p>
      I started my first job with Ruby, and Ruby on Rails. I later learned more
      JavaScript, going from jQuery to React. I’m also working with Python.
    </p>
    <p>
      The most important thing I took from Improv is an information/offer is a
      gift. I have tried to learn to see things people give me as gift, but as a
      result of that, there is something I feel is reciprocal of gifts, which is
      that I should want to give a gift of myself as well.
    </p>
    <p>
      I have learned that if I feel uncomfortable, it means that I am learning
      something. It’s good to get out of one’s comfort zone.
    </p>
    <p>
      I’m Alan Fung-Schwarz. My last name is an amalgamation I made when I
      wasn’t ready to give up my father’s last name and wanted to adopt my
      stepfather’s name. Looking back on it, I think I didn’t think through what
      it meant to have that name, which makes me unique, but also makes me feel
      different; I have a name that confuses people.
    </p>
    <p>
      I was supposed to get a{" "}
      <Link to="/cochlear-implant/">cochlear implant</Link> this year (2020),
      but the coronavirus, SARS-CoV-2, which causes COVID-19 ARDS disease in
      some people, interrupted my plans, as it did practically everyone else.
    </p>
    <Link to="/">Home</Link>
  </Layout>
)

export default Page2
