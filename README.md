# Project Title  
**Housing Pressure and Political Change: Analyzing the Relationship Between Rent Growth and Voting Behavior in Berlin, 2017–2025**

---

## 1. Introduction  

### 1.1 Background  
Between 2017 and 2025, Berlin has experienced sustained rent increases and growing housing pressures, alongside notable political shifts across three federal elections (2017, 2021, 2025). These developments make Berlin a valuable case for understanding how socio-economic stressors, especially housing affordability, may influence political behavior.

### 1.2 Motivation  
Housing affordability is not only a planning and social issue but may also shape political attitudes and electoral outcomes. Understanding this link could provide urban planners and policymakers with insight into how housing dynamics influence broader social and political change.

### 1.3 Research Objective  
To explore whether housing market pressures (rent levels and rent growth) are associated with changes in voting behavior in Berlin’s constituencies, controlling for socio-economic characteristics.

### 1.4 Research Questions  
- Does higher rent growth correlate with increased vote share for populist or protest parties (e.g., AfD, Die Linke)?  
- Do rent increases coincide with declining support for incumbent parties (e.g., SPD, CDU)?  
- Which socio-economic variables (income, unemployment, education) best explain vote-share variation across Berlin?

---

## 2. Data & Methods  

### 2.1 Datasets  

| Source | Data Type | Variables |
|---------|------------|-----------|
| **Federal Returning Officer (Bundeswahlleiter)** | Electoral data by constituency (2017–2025) | Vote shares per party, turnout |
| **Berlin Open Data / Empirica / Immowelt** | Housing data | Rent level (€/m²), rent growth, year built, type |
| **Amt für Statistik Berlin-Brandenburg** | Socio-economic | Income, unemployment, education level, migration |

### 2.2 Spatial Units  
Define spatial units:  
- **Option A:** Electoral constituencies (*Wahlkreise*) – ideal for matching election data.  
- **Option B:** Boroughs (*Bezirke*) – coarser but easier to find socio-economic data.  
- Adjust boundaries (e.g., through GIS or postal-code matching) to ensure temporal consistency from 2017–2025.

### 2.3 Pre-Processing  
- Convert rents to €/m² and calculate percentage change between years.  
- Compute vote-share change (e.g., AfD 2025 – AfD 2017).  
- Standardize socio-economic indicators (z-scores).  
- Merge datasets using spatial or name-based joins.

### 2.4 Methodology  
1. **Descriptive Statistics**  
   - Summary tables and distributions of rent levels, vote shares, and socio-economic indicators.  
2. **Correlation Analysis**  
   - Check pairwise correlations between rent change and vote-share change.  
3. **Regression Models**  
   - OLS or multiple linear regression:  
     \[
     \Delta \text{Vote Share} = \beta_0 + \beta_1 \text{Rent Change} + \beta_2 \text{Income} + \beta_3 \text{Unemployment} + \epsilon
     \]  
4. **Temporal Component**  
   - Test correlations separately for 2017–2021 and 2021–2025 to see if relationships strengthen or weaken over time.  
5. **Clustering (optional)**  
   - Cluster constituencies based on housing and socio-economic profiles (e.g., K-Means or Hierarchical Clustering).

### 2.5 Visualization  
- **Maps:** Rent change and vote-share change by constituency (using GeoPandas or Tableau).  
- **Scatter plots:** Rent change vs vote-share change.  
- **Time series:** Trends from 2017–2025 for selected parties.  
- **Regression plot:** Predicted vs observed vote-share changes.

---

## 3. Results  

### 3.1 Descriptive Insights  
- Variation in rent growth across Berlin.  
- Spatial pattern of party vote-share changes.  
- Socio-economic contrasts between central and peripheral areas.

### 3.2 Analytical Insights  
- Regression outputs showing which factors significantly predict vote-share shifts.  
- Identify possible thresholds (e.g., rent growth > X% linked with increased AfD or reduced SPD votes).  
- Optional: cluster interpretation — “types” of neighbourhoods based on rent and political dynamics.

---

## 4. Discussion & Implications  
- Interpret how rent growth and affordability pressures align with electoral shifts between 2017–2025.  
- Discuss whether these findings suggest a link between housing policy failures and political realignment.  
- Relate insights to urban planning: how housing affordability acts as both a social and political stabilizer.

---

## 5. Limitations & Future Work  
- Boundary mismatch between datasets.  
- Missing or inconsistent rent data over time.  
- Correlation ≠ causation — electoral shifts could reflect broader national trends.  
- Possible extensions:  
  - Include migration, age demographics, or new-build data.  
  - Apply the same method to Hamburg or Munich.

---

## 6. Conclusion  
- Summarize the main empirical findings.  
- Reaffirm the significance of connecting urban planning (housing pressures) and political science (voting behavior).  
- Offer recommendations for Berlin’s planners and policymakers.

---

## 7. Technical Stack  
- **Data cleaning & analysis:** Python (Pandas, NumPy, GeoPandas, Statsmodels)  
- **Visualization:** Matplotlib, Seaborn, Tableau (for maps and dashboards)  
- **Optional:** QGIS for map alignment; Scikit-learn for clustering.
