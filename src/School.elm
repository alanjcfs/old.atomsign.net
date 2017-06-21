module School exposing (school)

import Html exposing(Html)
import Html.Attributes exposing (class)
import Markdown exposing (toHtml)
import Model exposing (Model)
import Msg exposing (..)

school : Model
school = Model (toHtml [ class "content" ] text)

text = """
# School

I received a BA in Molecular and Cell Biology from UC Berkeley and an MS in
Chemistry from CSU East Bay.  After a time as a lab assistant, I decided to
change career to programming.  Although I had taken some computer science courses
in different schools, with background in data structure, algorithms, and
computer architecture, I don't have a formal degree in CS.

"""

