# Growth Decomposition (for Belgium)

I used the Penn World Table data and EUKLEMS data to decompose growth for Belgium.

## Main economic periods

The development of Belgian economy can be divided into the following sub-periods:  
1960 – 1980: Growth was fostered by foreign investment, notably from the US  
1980 – 1990: Following the Oil Shock in 1979 was a recession in 80-82. This period also marks the shift in regional economic structure where Flanders gradually took Wallonia's place as the economic center.  
1990 – 1999: Economy headed towards more export-centric and further European integration.  
1999 – 2009: The economy was fostered by regional dynamics and ICT's advancement. The economy got hit hard by the Global Financial Crisis
2009 – 2019: The economy in recovering phase after the GFC. Export was limited due to the appreciation of the Euro as a result of the ECB's intervention (Quantitative Easing since the European Debt Crisis from 2010 until 2018)

## Solow Residual decomposition

Average Annual Growth (%)

| period    | gY   | gK   | gL   | gA   | gy   | gk   | gE   | deviation from steady-state | labor's share |
|-----------|------|------|------|------|------|------|------|-----------------------------|---------------|
| 1959-1969 | 4.73 | 1.50 | 0.55 | 2.69 | 3.88 | 1.19 | 7.57 | -1.50                       | 0.6446347     |
| 1969-1979 | 3.52 | 1.60 | 0.11 | 1.81 | 3.35 | 1.54 | 5.09 | -0.27                       | 0.6446347     |
| 1979-1989 | 2.12 | 0.83 | 0.06 | 1.22 | 2.03 | 0.80 | 3.31 | -0.43                       | 0.6283150     |
| 1989-1999 | 2.14 | 0.95 | 0.34 | 0.86 | 1.60 | 0.74 | 2.24 | -0.12                       | 0.6181741     |
| 1999-2009 | 1.78 | 0.85 | 0.66 | 0.26 | 0.72 | 0.46 | 0.71 | 0.19                        | 0.6276425     |
| 2009-2019 | 1.56 | 0.66 | 0.56 | 0.34 | 0.65 | 0.31 | 0.87 | -0.03                       | 0.6128715     |

(\*)Y, K, L: aggregate output, capital and labor. A: TFP
(\*\*) y, k: output and capital per labor, E: labor-agumenting technological progress

## APG decomposition

Average Annual Growth (%)

| period    | APG growth | TE      | RE (total) | RE (LAB) | RE (CAP) | RE (II) |
|-----------|------------|---------|------------|----------|----------|---------|
| 2001-2005 | 1.6861     | 1.6985  | -0.0130    | 0.0022   | 0.0020   | -0.0172 |
| 2005-2009 | -0.2286    | -0.1944 | -0.0341    | 0.0092   | 0.0110   | -0.0543 |
| 2009-2013 | 0.9354     | 0.8894  | 0.0473     | -0.0031  | 0.0160   | 0.0344  |
| 2013-2017 | 0.4626     | 0.4596  | 0.0030     | -0.0010  | -0.0002  | 0.0042  |

(\*) APG as Aggregate Productivity Growth
(\*\*) TE as technical efficiency, RE as reallocation efficiency
(\*\*\*) LAB as Labor, CAP as Capital, II as Intermediate Inputs


##### YOY decomposition

| year | g_APG_annual | TE_annual | RE_annual | RE_LAB_annual | RE_CAP_annual | RE_II_annual |
|-----:|-------------:|----------:|----------:|--------------:|--------------:|-------------:|
| 2003 |       1.0684 |    1.1266 |   -0.0582 |        0.0088 |       -0.0190 |      -0.0480 |
| 2004 |       3.1851 |    3.2205 |   -0.0354 |       -0.0030 |       -0.0263 |      -0.0061 |
| 2005 |       0.9661 |    1.0061 |   -0.0400 |        0.0039 |       -0.0256 |      -0.0183 |
| 2006 |       0.9220 |    0.9645 |   -0.0425 |        0.0125 |        0.0057 |      -0.0607 |
| 2007 |       1.7819 |    1.8083 |   -0.0264 |        0.0002 |       -0.0036 |      -0.0230 |
| 2008 |      -0.9968 |   -0.9690 |   -0.0278 |       -0.0070 |        0.0019 |      -0.0226 |
| 2009 |      -2.5537 |   -2.3398 |   -0.2138 |        0.0455 |        0.0164 |      -0.2757 |
| 2010 |       3.2641 |    3.1817 |    0.0824 |       -0.0054 |        0.0372 |       0.0506 |
| 2011 |       0.8595 |    0.9502 |   -0.0907 |        0.0228 |        0.0084 |      -0.1219 |
| 2012 |      -0.4780 |   -0.5000 |    0.0220 |       -0.0043 |       -0.0010 |       0.0274 |
| 2013 |       0.3290 |    0.3460 |   -0.0170 |        0.0046 |        0.0016 |      -0.0232 |
| 2014 |       0.6695 |    0.6748 |   -0.0053 |        0.0023 |        0.0052 |      -0.0128 |
| 2015 |       1.7818 |    1.8062 |   -0.0245 |        0.0036 |       -0.0093 |      -0.0188 |
| 2016 |      -0.2878 |   -0.2811 |   -0.0067 |        0.0085 |       -0.0058 |      -0.0093 |
| 2017 |      -0.2386 |   -0.2283 |   -0.0103 |        0.0095 |       -0.0032 |      -0.0166 |

**For more detail, visit here:**
Rpubs: [link](https://rpubs.com/thanhqtran/775009)