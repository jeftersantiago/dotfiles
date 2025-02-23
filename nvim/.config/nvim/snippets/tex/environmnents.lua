local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
  -- Combining text and insert nodes to create basic LaTeX commands
  s({trig="tt", dscr="Expands 'tt' into '\texttt{}'"},
    {
      t("\\texttt{"), -- remember: backslashes need to be escaped
      i(1),
      t("}"),
    }
  ),
  -- Yes, these jumbles of text nodes and insert nodes get messy fast, and yes,
  -- there is a much better, human-readable solution: ls.fmt, described shortly.
  s({trig="ff", dscr="Expands 'ff' into '\frac{}{}'"},
    {
      t("\\frac{"),
      i(1),  -- insert node 1
      t("}{"),
      i(2),  -- insert node 2
      t("}")
    }
  ),
  s({trig="|\\>", dscr="ket"},
    {
      t("\\ket{"),
      i(1),
      t("}"),
    }
  ),
  s({trig="ket", dscr="ket"},
    {
      t("\\ket{"),
      i(1),
      t("}"),
    }
  ),
  s({trig="\\<|", dscr="bra"},
    {
      t("\\bra{"),
      i(1),
      t("}"),
    }
  ),
  s({trig="bra", dscr="bra"},
    {
      t("\\bra{"),
      i(1),
      t("}"),
    }
  ),
  s({trig="braket", dscr="braket"},
    {
      t("\\braket{"),
      i(1),
      t("\\right}"),
    }
  ),
  s({trig="hat", dscr="hat"},
    {
      t("\\hat{"),
      i(1),
      t("}"),
    }
  ),
  s({trig="()", dscr="parenthesis"},
    {
      t("\\left("),
      i(1),
      t("\\right)"),
    }
  ),
  s({trig="[]", dscr="brackets"},
    {
      t("\\left["),
      i(1),
      t("\\right]"),
    }
  ),
  s({trig="exp", dscr="big exponential"},
    {
      t("\\exp\\bigg["),
      i(1),
      t("\\bigg])"),
    }
  ),
  s({trig="trace", dscr="lower case trace"},
    {
      t("\\tr \\left("),
      i(1),
      t("\\right)"),
    }
  ),
  s({trig="Trace", dscr="upper case trace"},
    {
      t("\\Tr \\left["),
      i(1),
      t("\\right]"),
    }
  ),
  s({trig="bTrace", dscr="upper case bold trace"},
    {
      t("{\\boldsymbol \\Tr}\\left["),
      i(1),
      t("\\right]"),
    }
  ),
  s({trig="vec", dscr="arrow"},
    {
      t("\\vec{"),
      i(1),
      t("}"),
    }
  ),
  s({trig="|0\\>", dscr="|0>."},
    {
      t("\\ket{0}"),
      i(1),
      t("}"),
    }
  ),
  s({trig="mc", dscr="mathcal env"},
    {
      t("\\mathcal{"),
      i(1),
      t("}"),
    }
  ),
  s({trig="mb", dscr="mathbb env"},
    {
      t("\\mathbb{"),
      i(1),
      t("}"),
    }
  ),
  s({trig="bb", dscr="boldsymbol env"},
    {
      t("{\\boldsymbol "),
      i(1),
      t("}"),
    }
  ),
  s({trig="sqrt", dscr="sqrt env"},
    {
      t("\\sqrt{"),
      i(1),
      t("}"),
    }
  ),
  s({trig="pmatrix", dscr="pmatrix"},
    {
      t("\\begin{pmatrix}"),
       i(1),
      t("\\end{pmatrix}"),
    }
  ),
  s({trig="<>", dscr="braket"},
    {
      t("\\braket{"),
       i(1),
      t("}"),
    }
  ),
  s({trig="><", dscr="ketbra"},
    {
      t("\\ket{"),
       i(1),
      t("}"),
      t("\\bra{"),
       i(2),
      t("}"),
    }
  ),
  s({trig="ketbra", dscr="ketbra"},
    {
      t("\\ket{"),
       i(1),
      t("}"),
      t("\\bra{"),
       i(2),
      t("}"),
    }
  ),
}

