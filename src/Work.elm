module Work exposing (..)

import Html exposing(Html)
import Html.Attributes exposing (class)
import Markdown exposing (toHtml)

work : Html msg
work = toHtml [ class "content" ] """
# Work

I currently work at Citadel. The tools of the trade are Ruby on Rails for API,
React for client-side development, Python for data science analysis. We use
Postgres for data storage, in addition to MongoDB, Redis, and ElasticSearch.

"""

