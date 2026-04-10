local ls = require 'luasnip'
local s = ls.snippet
local i = ls.insert_node
local rep = require('luasnip.extras').rep
local fmta = require('luasnip.extras.fmt').fmta

return {
  -- \begin{} ... \end{} environment
  s(
    { trig = 'env', snippetType = 'snippet', dscr = 'Begin and end an arbitrary environment' },
    fmta(
      [[
\begin{<>}
  <>
\end{<>}
    ]],
      { i(1), i(2), rep(1) }
    )
  ),

  -- some common environments
  s(
    { trig = 'eq', dscr = 'Equation environment' },
    fmta(
      [[
\begin{equation}
  <>
\end{equation}
    ]],
      { i(1) }
    )
  ),

  s(
    { trig = 'ali', dscr = 'Align environment' },
    fmta(
      [[
\begin{align}
  <>
\end{align}
    ]],
      { i(1) }
    )
  ),
}
