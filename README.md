# Housing Pressure and Political Change: Analyzing the Relationship Between Rent Growth and Voting Behavior in Berlin, 2017–2025

## 1. Introduction

### 1.1 Background
Between 2017 and 2025, Berlin has experienced sustained rent increases and growing housing pressures, alongside notable political shifts across three federal elections (2017, 2021, 2025). These developments make Berlin a valuable case for understanding how socio-economic stressors, especially housing affordability, may influence political behavior.

### 1.2 Motivation
Housing affordability and other economical factors such as gini index and poverty risk are not only a planning and social issue but may also shape political attitudes and electoral outcomes. Understanding this link could provide urban planners and policymakers with insight into how housing dynamics influence broader social and political change.

### 1.3 Research Objective
To explore whether housing market pressures (rent levels and rent growth) and other socio-economical factors are associated with changes in voting behavior in Berlin’s constituencies, controlling for socio-economic characteristics.

### 1.4 Research Questions

- **Main Research Question:**  
  To what extent do rising housing pressures — measured through rent levels and rent growth — relate to changes in voting behavior across Berlin’s constituencies between 2017 and 2025, and how strong is this relationship once socio-economic factors are considered?

- **Sub-Questions:**  
  - Does rent growth correspond with noticeable but limited shifts in support for specific political parties (e.g., AfD, Die Linke)?  
  - How do socio-economic variables (gini index and poverty risk) mediate or weaken this relationship?  
  - Are spatial patterns of these weak correlations concentrated in particular districts or evenly distributed across Berlin?

---

## 2. Data & Methods

### 2.1 Datasets

| Source | Data Type | Variables |
|---------|------------|-----------|
| **Federal Returning Officer (Bundeswahlleiter)** | Electoral data by constituency (2017–2025) | Vote shares per party, turnout |
| **Berlin Open Data / Empirica / Immowelt** | Housing data | Rent level (€/m²), rent growth |
| **Amt für Statistik Berlin-Brandenburg** | Socio-economic | Poverty, unemployment, Gini index |

### 2.2 Spatial Units
Define spatial units:
- **Option A:** Electoral constituencies (*Wahlkreise*) – ideal for matching election data.  
- **Option B:** Boroughs (*Bezirke*) – coarser but easier to find socio-economic data.  
- Adjust boundaries to ensure temporal consistency from 2017–2025.

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
   - Ordinary Least Squares (OLS) or multiple linear regression:  
     ```
     ΔVote Share = β₀ + β₁(Rent Change) + β₂(Income) + β₃(Unemployment) + ε
     ```
4. **Temporal Component**  
   - Test correlations separately for 2017–2021 and 2021–2025 to see if relationships strengthen or weaken over time.  
5. **Clustering (optional)**  
   - Cluster constituencies based on housing and socio-economic profiles (e.g., K-Means or Hierarchical Clustering).

### 2.5 Visualization
- **Maps:** Rent change and vote-share change by constituency (using Tableau).  
- **Scatter plots:** Rent change vs vote-share change.  
- **Time series:** Trends from 2017–2025 for selected parties.  
- **Regression plot:** Predicted vs observed vote-share changes.

---

## 3. Results

### 3.1 Descriptive Insights
- Variation in rent growth across Berlin.  
- Spatial pattern of party vote-share changes.  
- Socio-economic contrasts between different areas.

### 3.2 Analytical Insights
- Correlation and regression results indicate only **small or weak relationships** between rent growth and changes in vote shares.  
- Some local tendencies appear — e.g., areas with above-average rent increases show slightly higher variation in AfD or SPD support — but effects are inconsistent and not robust across all time intervals.  
- Socio-economic indicators (income, unemployment, inequality) explain a larger share of variance than rent dynamics alone.  
- Weak but spatially uneven patterns suggest that housing pressure interacts with local context rather than driving citywide political realignment.

---

## 4. Discussion & Implications
- The weak correlations imply that while housing affordability remains a socially salient issue, it exerts **limited direct influence** on Berlin’s electoral outcomes between 2017 and 2025.  
- Political change seems more strongly linked to broader socio-economic and cultural factors than to rent dynamics alone.  
- Still, minor spatial relationships highlight the **symbolic and contextual** importance of housing stress, especially in districts under rapid transformation.  
- For planners and policymakers, this suggests that stabilizing housing conditions may still indirectly support social and political cohesion, even if statistical relationships are modest.

---

## 5. Limitations & Future Work
- Boundary mismatch between datasets.  
- Missing or inconsistent rent data over time.  
- Correlation ≠ causation — electoral shifts could reflect broader national or cultural trends.  
- The observed weak correlations highlight the need for more granular temporal or qualitative data.  
- Possible extensions:  
  - Apply the same method to Hamburg or Munich.  
  - Incorporate local election data or longitudinal household surveys for stronger inference.

---

## 6. Conclusion
The analysis finds only a **weak correlation** between rent growth and changes in voting behavior in Berlin from 2017 to 2025. While housing pressures contribute to the city’s broader socio-economic landscape, their direct statistical impact on electoral outcomes appears limited. Nonetheless, the study reinforces the importance of viewing housing affordability as part of the political ecosystem — influencing perceptions, tensions, and long-term neighborhood dynamics.  

By integrating urban planning and political analysis, this project highlights how spatially uneven development and affordability pressures remain relevant not as deterministic forces, but as subtle, context-dependent contributors to Berlin’s evolving political geography.

---

## 7. Technical Stack
- **Data cleaning & analysis:** Python (Pandas, NumPy, Statsmodels)  
- **Visualization:** Matplotlib, Seaborn, Tableau (for maps and dashboards)  

## External Links:
- **Tableau: https://public.tableau.com/views/Final_proj_plot/DashboardScatterplot?:language=de-DE&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
             https://public.tableau.com/views/Final_proj_17618948554720/DashboardSpatial?:language=de-DE&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link 
- **Presentation: https://docs.google.com/presentation/d/1VEoV0F3f5su_FI-sEQ7YzJ35jL9pQZsLPF_F8oFp7jQ/edit?usp=sharing 