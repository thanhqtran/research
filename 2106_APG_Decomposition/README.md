# Growth Decomposition (for Belgium)

## Solow Residual decomposition

### Periods  

The development of Belgian economy can be divided into the following sub-periods:  
1960 – 1980: Growth was fostered by foreign investment, notably from the US  
1980 – 1990: Following the Oil Shock in 1979 was a recession in 80-82. This period also marks the shift in regional economic structure where Flanders gradually took Wallonia's place as the economic center.  
1990 – 1999: Economy headed towards more export-centric and further European integration.  
1999 – 2009: The economy was fostered by regional dynamics and ICT's advancement.  
2009 – 2019: The economy in recovering phase after the GFC.  

### Hicks neutral  

#### Theory

PF: $Y = A F(K,L) = AK^\alpha L^{1-\alpha}$  

where:  
Y: real GDP at constant prices *rgdpna*  
K: real capital stock *rkna*  
L: labor *emp*  
$1 - \alpha$: labor share *labsh*  
A: TFP (to be estimated)  

#### Practice

To do growth accounting, use "take logs and derivatives" technique.  

(1) First, take logs of both sides.  
$\ln(Y) = \ln(A) + \alpha\ln(K) + (1-\alpha)\ln(L)$  

(2) Take the derivatives wrt time.  
$\frac{d\ln(Y)}{dt} = \frac{d\ln(A)}{dt} + \alpha\frac{d\ln(K)}{dt} + (1-\alpha)\frac{d\ln(L)}{dt}$  

(3) Implying (i):  
$\frac{\dot{Y}}{Y} = \frac{\dot{A}}{A} + \alpha \frac{\dot{K}}{K} + (1-\alpha)\frac{\dot{L}}{L}$  

In R, we just need to perform steps (1) and (2) to derive the (3).  
From there, the $\frac{\dot{A}}{A}$ term is just the residual.  

#### Result

| period    |       gY |        gK |        gL |        gA |  labor share |
|-----------|---------:|----------:|----------:|----------:|----------:|
| 1960-1979 | 4.053907 | 1.5711758 | 0.2729940 | 2.2097369 | 0.6446347 |
| 1979-1989 | 2.119395 | 0.8705027 | 0.0549005 | 1.1939914 | 0.6119953 |
| 1989-1999 | 2.145152 | 0.9318447 | 0.3450963 | 0.8682110 | 0.6243529 |
| 1999-2009 | 1.780783 | 0.8447240 | 0.6668899 | 0.2691689 | 0.6309320 |
| 2009-2019 | 1.565650 | 0.6962845 | 0.5469071 | 0.3224589 | 0.5948110 |

### Harrod Neutral  

#### Theory

PF: $Y = F(K,EL) = K^\alpha L^{1-\alpha} E^{1-\alpha}$  

Let $A(t) = E(t)^{1-\alpha} \Rightarrow \frac{\dot{A}}{A} = (1-\alpha)\frac{\dot{E}}{E}$  

Per effective labor production $\tilde{k}=K/EL$:  
$\Rightarrow \frac{\dot{\tilde{k}}}{\tilde{k}} = \frac{\dot{k}}{k} - \frac{\dot{E}}{E}$  
In the steady state, $\frac{\dot{\tilde{k}}}{\tilde{k}} = 0$  
if not, then it is the deviation from the steady state.  

Per labor production function $k=K/L$:  
$y = Ak^\alpha$  
$\equiv \frac{\dot{y}}{y} = \frac{\dot{E}}{E} + \alpha\frac{\dot{\tilde{k}}}{k}$

#### Practice

To do growth accounting in this case:  

(1) Take logs of per labor variables ($\ln(y) = \ln(Y) - \ln(L)$)  

(2) Differentiate wrt time:
$\frac{d\ln(y)}{dt} = \frac{d\ln(A)}{dt} + \alpha\frac{d\ln(k)}{dt}$  
$\Rightarrow \frac{\dot{y}}{y} = \frac{\dot{A}}{A} + \alpha\frac{\dot{k}}{k}$  

(3) Calculate growth accounting according to $(ii)$

#### Result

| period    |        gy |        gk |        gE |      gkdev |
|-----------|----------:|----------:|----------:|-----------:|
| 1960-1979 | 3.6304203 | 1.4206835 | 6.2182126 | -0.7890534 |
| 1979-1989 | 2.0296872 | 0.8356958 | 3.0772600 | -0.3582956 |
| 1989-1999 | 1.5924257 | 0.7242147 | 2.3112413 | -0.1439963 |
| 1999-2009 | 0.7237912 | 0.4546223 | 0.7293207 |  0.1854534 |
| 2009-2019 | 0.6461867 | 0.3237279 | 0.7958232 |  0.0012690 |
## APG decomposition

#### Theory

- Gross output production function for firm *i*

$Q_i = Q_i (L_i, X_i, \omega_i)$

where:

$Q_i = \text{firm i's output}$

$L_i = \text{firm i's primary inputs} = \{L_{ik}\} = (L_{i1}, L_{i2}, ..., L_{ik})$ → firm *i* uses inputs from sector *k*. Primary inputs include labor and capital.

$X_i = \text{firm i's intermediate inputs} = \{X_{ij}\} = (X_{i1}, ..., X{ij})$ → firm *i* uses output of firm *j*

$\omega_i = \text{firm i's technical efficiency}$

Measure the change in $Q_i$:

$d Q_i = \frac{\partial Q_i}{\partial L_i}d L_i + \frac{\partial Q_i}{\partial X_i}d X_i + \frac{\partial Q_i}{\partial \omega_i}d \omega_i$

- Final production that goes to consumers should be:

$Y_i = Q_i - \sum_j X_{ji}$

where:

$Q_i = \text{firm i's total production}$

$\sum_j X_{ji} = \text{total output from firm i that is used as intermediate goods}$

$\sum_i Y_i$ should be the GDP (production goes to consumers, after eliminating all intermediate goods)

so:

$dY_i = dQ_i - \sum_j dX_{ji}$

$\Rightarrow d Y_i = \frac{\partial Q_i}{\partial L_k}d L_{ik} + \frac{\partial Q_i}{\partial X_j}d X_{ij} + \frac{\partial Q_i}{\partial \omega_i}d\omega_i - \sum_j dX_{ji}$

- APG decomposition:

$APG = \color{red}{\sum_i P_i\frac{\partial Q_i}{\partial \omega_i}d\omega_i + \sum_i\sum_k P_i\frac{\partial Q_i}{\partial L_k}dL_{ik} + \sum_i\sum_j(P_i\frac{\partial Q_i}{\partial X_j} - P_j)\  dX_{ij}} - \color{blue}{\sum_i\sum_k W_{ik} \ dL_{ik}}$

$= \color{red}{\sum_i P_i\frac{\partial Q_i}{\partial \omega_i}d\omega_i} + \color{blue}{\sum_i\sum_k ( P_i\frac{\partial Q_i}{\partial L_k} - W_{ik})\ dL_{ik}} + \color{green}{\sum_i\sum_j(P_i\frac{\partial Q_i}{\partial X_j} - P_j)\  dX_{ij}}$

*$\color{red}{red}$*: gain from technical efficiency changes (TE)

*$\color{blue}{blue}$*: gain from reallocation of pirimary nput factors such as Labor and Capital (RE_lab, RE_cap)

*$\color{green}{green}$*: gain from reallocation of intermediate goods (RE_ii)

$\Rightarrow$ We can see that the change in final demand (output) comes from 3 sources: tech growth, RE in inputs and RE of intermediate goods.

- APG growth rate:

$g_{APG} = \frac{1}{\sum VA_i} \left(\sum_i dVA_i- \sum\sum W_{ik} dL_{ik}\right)$

$\Rightarrow g_{APG} = \frac{1}{\sum VA_i} \left(VA_i \sum_i d \ln(VA_i) - VA_i \frac{W_{ik}L_{ik}}{VA_i} d\ln(L_{ik})\right)$

$\Rightarrow \color{red}{g_{APG}= \sum_i D_i^\nu d \ln(VA_i) - \sum_i D_i^\nu \sum_k s^\nu_{ik} d \ln(L_{ik})}$

where: $D_i^\nu = \frac{VA_i}{\sum_{i} VA_i}$, also known as the Domar Weight,  $s_{ik}^\nu = \frac{W_{ik}L_{ik}}{VA_i}$

$g_{APG} = \frac{APG}{\sum VA_i} = \color{blue}{\sum_i D_i \sum_k (\beta_{ik} - s_{ik})d \ln(L_{ik})} + \color{green}{\sum_i D_i \sum_j (\beta_{ij} - s_{ij})d \ln(X_{ij})} + \color{red}{\sum_i D_i \beta_w d\ln(\omega_i)}$

where $\frac{P_iQ_i}{\sum_i VA_i} \equiv D_i$ <- Gross Output Domar Weight

$\beta$ term is the Elasticity of output wrt input $\beta_{ik} = \frac{\partial Q_i}{\partial L_{ik}}\frac{L_{ik}}{Q_i}$, $\beta_{ij} = \frac{\partial Q_i}{\partial X_{ij}}\frac{X_{ij}}{Q_i}$

$s$ as factor income share: $s_{ik} = \frac{W_{ik}L_{ik}}{P_iQ_i}, s_{ij} = \frac{P_{ij}X_{ij}}{P_iQ_i}$

#### Practice

(1) We import important variables from the subset  
(2) Calculate the Domar weights (VA and GO). From here, we can calculate $\beta$  
(3) $\beta$ Estimation
(4) Divide the time periods then calculate the difference & weighted moving average  
(5) Perform growth accounting.  

#### Result

##### Periods based decomposition

RE as reallocation
TE as technical growth
Values are in average annual growth (%)

| period    | g_APG_annual | TE_annual | RE_annual | RE_LAB_annual | RE_CAP_annual | RE_II_annual |
|-----------|-------------:|----------:|----------:|--------------:|--------------:|-------------:|
| 2000-2003 |       0.8964 |    0.8967 |   -0.0003 |       -0.0184 |       -0.0124 |       0.0304 |
| 2003-2006 |       1.6430 |    1.6665 |   -0.0243 |       -0.0018 |       -0.0137 |      -0.0088 |
| 2006-2009 |      -0.6332 |   -0.5778 |   -0.0547 |        0.0041 |        0.0114 |      -0.0702 |
| 2009-2013 |       0.9354 |    0.8894 |    0.0473 |       -0.0031 |        0.0160 |       0.0344 |
| 2013-2017 |       0.4626 |    0.4596 |    0.0030 |       -0.0010 |       -0.0002 |       0.0042 |

##### YOY decomposition

| year | g_APG_annual | TE_annual | RE_annual | RE_LAB_annual | RE_CAP_annual | RE_II_annual |
|-----:|-------------:|----------:|----------:|--------------:|--------------:|-------------:|
| 2001 |      -0.3522 |   -0.3683 |    0.0161 |       -0.0126 |        0.0118 |       0.0169 |
| 2002 |       2.0373 |    2.0625 |   -0.0252 |        0.0162 |       -0.0042 |      -0.0372 |
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

For more detail, visit here:
Rpubs: [link](https://rpubs.com/thanhqtran/775009)
(As math mode is not supported on Git, it's easier to see on Rpubs repo).