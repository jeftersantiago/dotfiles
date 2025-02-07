local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {
    s('alpha', {t('\\alpha')}),

    s('beta', {t('\\beta')}),

    s('delta', {t('\\delta')}),
    s('Delta', {t('\\Delta')}),

    s('zeta', {t('\\zeta')}),
    s('Zeta', {t('\\Zeta')}),

    s('eta', {t('\\eta')}),
    s('Eta', {t('\\Eta')}),

    s('xi', {t('\\xi')}),
    s('Xi', {t('\\Xi')}),

    s('gamma', {t('\\gamma')}),
    s('Gamma', {t('\\Gamma')}),

    s('epsilon', {t('\\epsilon')}),
    s('vepsilon', {t('\\varepsilon')}),

    s('lambda', {t('\\lambda')}),
    s('Lambda', {t('\\Lambda')}),

    s('theta', {t('\\theta')}),
    s('Theta', {t('\\Theta')}),

    s('phi', {t('\\phi')}),
    s('Phi', {t('\\Phi')}),
    s('vphi', {t('\\varphi')}),
    s('vPhi', {t('\\varPhi')}),

    s('psi', {t('\\psi')}),
    s('Psi', {t('\\Psi')}),

    s('dagger', {t('\\dagger')}),
    s('dag', {t('\\dagger')}),

    s('uparrow', {t('\\uparrow')}),
    s('downarrow', {t('\\uparrow')}),
    s('|0\\>', {t('\\ket{0}')}),
    s('|1\\>', {t('\\ket{1}')}),
    s('|up\\>', {t('\\ket{\\uparrow}')}),

    s('->', {t('\\rightarrow')}),
    s('-->', {t('\\longrightarrow')}),
    s('=>', {t('\\Rightarrow')}),
    s('==>', {t('\\Longrightarrow')}),
    s('<-', {t('\\lefttarrow')}),
    s('<--', {t('\\longleftarrow')}),
    s('<=', {t('\\Lefttarrow')}),
    s('<==', {t('\\Longleftarrow')}),
    s('<->', {t('\\leftrighttarrow')}),
    s('<-->', {t('\\longleftrightarrow')}),
    s('<=>', {t('\\Leftrighttarrow')}),

    s('cos', {t('\\cos')}),
    s('sin', {t('\\sin')}),
    s('tan', {t('\\tan')}),
    s('csc', {t('\\csc')}),
    s('cossec', {t('\\cossec')}),
    s('sec', {t('\\sec')}),

    s('acos', {t('\\arccos')}),
    s('asin', {t('\\arcsin')}),
    s('atan', {t('\\arctan')}),
    s('asec', {t('\\arcsec')}),
    s('acsc', {t('\\arccsc')}),

    s('cosh', {t('\\cosh')}),
    s('sinh', {t('\\sinh')}),
    s('tanh', {t('\\tanh')}),
    s('csch', {t('\\csch')}),
    s('cossech', {t('\\cossech')}),
    s('sech', {t('\\sech')}),
    s('acosh', {t('\\arccosh')}),
    s('asinh', {t('\\arcsinh')}),
    s('atanh', {t('\\arctanh')}),
    s('asech', {t('\\arcsech')}),
    s('acsch', {t('\\arccsch')}),

    s('dot', {t('\\cdot')}),
    s('dots', {t('\\dots')}),
}









