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

| period    | gY       | gK        | gL        | gA        |
| --------- | -------- | --------- | --------- | --------- |  
| 1960-1979 | 4.053907 | 1.5711758 | 0.2729940 | 2.2097369 |
| 1979-1989 | 2.119395 | 0.8705027 | 0.0549005 | 1.1939914 |
| 1989-1999 | 2.145152 | 0.9318447 | 0.3450963 | 0.8682110 |
| 1999-2009 | 1.780783 | 0.8447240 | 0.6668899 | 0.2691689 |

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

| period | gy | gk | gE | gkdev |
| --------- | --------- | --------- | --------- | --------- |
| 1960-1979 | 3.6304203 | 1.4206835 | 6.2182126 | -0.7890534 |
| 1979-1989 | 2.0296872 | 0.8356958 | 3.0772600 | -0.3582956 |
| 1989-1999 | 1.5924257 | 0.7242147 | 2.3112413 | -0.1439963 |
| 1999-2009 | 0.7237912 | 0.4546223 | 0.7293207 | 0.1854534 |
| 2009-2019 | 0.6461867 | 0.3237279 | 0.7958232 | 0.0012690 |

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

RE as reallocation
TE as technical growth
Values are in average annual growth (%)

| period    | g_APG  | TE     | RE    | RE_LAB    | RE_CAP | RE_II  |
| --------- |--------- | --------- | --------- | --------- | --------- | --------- |
| 1999-2003 | 0.5704 | 0.5292 | 0.0420 | 0.0251 | 0.0066 | 0.0103 |
| 2003-2007 | 1.3052 | 1.2330 | 0.0759 |   -0.0132 | 0.0212 | 0.0679 |
| 2007-2011 | 0.1142 | 0.1053 | 0.0089 | 0.0086 |   -0.0366 | 0.0369 |
| 2011-2014 | 0.1292 | 0.1271 | 0.0021 |   -0.0048 |   -0.0007 | 0.0076 |
| 2014-2017 | 0.2974 | 0.2903 | 0.0072 |   -0.0117 | 0.0146 | 0.0044 |

Rpubs: [link](https://rpubs.com/thanhqtran/775009)
(As math mode is not supported on Git, it's easier to see on Rpubs repo).