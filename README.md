# 📊 Marketing Channel Performance & ROI Analysis

**Dataset:** Google Analytics Merchandise Store — BigQuery Public Data

**Date Range:** August 2016 – August 2017 &nbsp;|&nbsp; **Tools:** BigQuery (Standard SQL) · Power BI

**Scope:** 903,653 sessions · 8 marketing channels · 12 months

🌐 Live Interactive Dashboard

👉 https://sandu17767.github.io/Marketing-Channel-Performance-ROI-Analysis/

---

## 💡 Business Question

> *"Which channels are driving the most valuable traffic — and where should we be investing our marketing budget?"*

This project answers that question end-to-end: from data audit to executive-ready ROI scorecard, using real session-level data from Google's own merchandise store.

---

## 🗺️ Analytical Approach

Seven areas of analysis built progressively, each answering a distinct business question before converging into the final budget recommendation.

| # | Focus Area | Business Question |
|---|---|---|
| 1 | Data Audit | Is this data trustworthy and complete? |
| 2 | Channel Overview | Which channels convert and generate revenue? |
| 3 | Monthly Trend | Are channels improving or declining over time? |
| 4 | Device Breakdown | Are mobile users converting differently from desktop? |
| 5 | Source / Medium Deep Dive | Within channels, which specific sources perform best? |
| 6 | Geographic Performance | Which countries drive revenue and where is opportunity? |
| 7 | ROI Scorecard | Where should budget be invested or cut? |

---

## 🔍 Data Audit

Before any analysis, the dataset was validated for completeness and consistency.

| Metric | Value |
|---|---|
| Date range | Aug 2016 → Aug 2017 |
| Total sessions | 903,653 |
| Unique visitors | 714,167 |
| Distinct channels | 8 |
| Total transactions | 12,115 |
| Total revenue | $1,540,071 |
| Sessions with revenue | 11,515 |
| Sessions without revenue | 892,138 |
| **Site-wide conversion rate** | **1.34%** |

<br>

The site-wide conversion rate of 1.34% sits below the e-commerce industry benchmark of 2–4%. Critically, 98.7% of all sessions generate zero revenue. This makes traffic quality — not traffic volume — the most important variable in the budget allocation decision.

The quantified opportunity: even a 0.5 percentage point improvement in conversion rate would produce approximately 4,500 additional transactions. At the observed average order value of ~$127, that represents roughly **$571,000 in incremental annual revenue without acquiring a single new visitor**.

---

## 📈 Channel Performance Overview

Each channel's conversion rate, revenue, and engagement metrics across the full 12-month period.

| Channel | Sessions | Sessions % | CR% | Revenue | Revenue % | RPS | AOV | Bounce% |
|---|---|---|---|---|---|---|---|---|
| Referral | 104,838 | 11.6% | 5.29% | $651,430 | 42.3% | $6.21 | $117.52 | 25.98% |
| Direct | 143,026 | 15.8% | 1.55% | $434,841 | 28.2% | $3.04 | $195.96 | 49.56% |
| Organic Search | 381,561 | 42.2% | 0.94% | $326,381 | 21.2% | $0.86 | $91.14 | 48.32% |
| Display | 6,262 | 0.7% | 2.43% | $78,337 | 5.1% | $12.51 | $515.38 | 35.87% |
| Paid Search | 25,326 | 2.8% | 1.89% | $43,559 | 2.8% | $1.72 | $90.94 | 38.01% |
| Social | 226,117 | 25.0% | 0.06% | $4,917 | 0.3% | $0.02 | $37.53 | 65.24% |
| Affiliates | 16,403 | 1.8% | 0.05% | $597 | 0.04% | $0.04 | $66.38 | 53.05% |

*RPS = Revenue Per Session &nbsp;·&nbsp; AOV = Average Order Value &nbsp;·&nbsp; Industry benchmark CR: 2–4%*

<br>

### Sessions vs. Revenue Gap

The gap between a channel's traffic share and revenue share is the most important diagnostic in the analysis. Any channel with a large negative gap is sending visitors who will never buy.

| Channel | Sessions Share | Revenue Share | Gap | Verdict |
|---|---|---|---|---|
| Social | 25.0% | 0.3% | −24.7pts | 🔴 Traffic without intent |
| Organic Search | 42.2% | 21.2% | −21.0pts | 🟡 Volume without quality |
| Paid Search | 2.8% | 2.8% | 0pts | ⚪ Earning exactly its share |
| Direct | 15.8% | 28.2% | +12.4pts | 🔵 Punching above its weight |
| Display | 0.7% | 5.1% | +4.4pts | 🟢 Massively underleveraged |
| Referral | 11.6% | 42.3% | +30.7pts | 🟢 The standout performer |

<br>

### Channel Analysis

<br>

**🟢 Referral**

Converts at 5.29% — more than double the 2–4% industry benchmark. Generates 42.3% of total revenue from just 11.6% of sessions. The 25.98% bounce rate is exceptional. Every referral visitor is worth $6.21 in expected revenue before taking any action.

**Risk:** Referral traffic is partially outside direct control. If a key referring domain changes its links, that revenue is lost with no internal lever to pull.

<br>

**🔵 Direct**

Holds the highest average order value at $195.96 — 67% higher than Referral and more than double Organic Search. These are returning customers and loyal buyers who have already decided to purchase. Direct cannot be bought. The investment is in what *creates* it: loyalty programmes, retention email, and repeat purchase incentives.

**Note:** A significant portion of Direct is dark traffic — untagged email links and social apps that strip referrer data — meaning this channel likely understates Email and CRM contributions.

<br>

**🟡 Organic Search**

The biggest missed opportunity in the dataset. Drives 42.2% of all sessions but converts at 0.94% — below the industry floor of 2%. Revenue peaked at $40,509 in August 2016 and has not recovered despite sessions growing 56% year-on-year.

**Quantified opportunity:** Improving conversion from 0.94% to 2% produces approximately 4,000 additional transactions — at $91.14 AOV, that is **$364,000 in incremental annual revenue from traffic already arriving, with no additional acquisition spend required**.

<br>

**🟢 Display**

Generates $12.51 revenue per session — 7.3x the site average of $1.70 — with a $515.38 average order value from only 6,262 sessions. Receives less than 1% of total traffic yet generates 5.1% of revenue. The investment case is strong but requires source-level decomposition before scaling to identify which campaigns and audiences are producing $515 buyers.

<br>

**🔵 Paid Search**

Converts at 1.89% (approaching benchmark) and generates $1.72 per session at the site average. With only 25,326 sessions (2.8% of traffic), it is significantly underfunded relative to channels producing far worse results. Unit economics work — it earns exactly its session share in revenue.

<br>

**🔴 Social**

Drives 25% of all sessions at $0.02 per visitor — 311x less valuable than Referral per session. The 65.24% bounce rate is the highest of any channel. Root cause is identified in the source analysis below: this is a YouTube-specific problem.

<br>

**🔴 Affiliates**

Produced 9 transactions and $597 in revenue from 16,403 sessions over 12 months. The programme is not functioning as an acquisition channel.

---

## 📅 Monthly Trend Analysis

Point-in-time snapshots can mislead. A channel that looks weak annually may be growing fast — or one that looks strong may be in decline. Trends reveal the real story behind the averages.

<br>

### 🔴 Organic Search — Structural Efficiency Decline

The most urgent finding in the entire analysis.

| Period | Monthly Sessions | Conversion Rate | Monthly Revenue |
|---|---|---|---|
| Aug 2016 | 24,143 | 1.53% | $40,509 |
| Sep–Nov 2016 | ~30,000 avg | ~0.95% avg | ~$27,000 avg |
| Dec 2016 | 32,008 | 1.21% | $25,496 |
| Jan–Feb 2017 | ~29,500 avg | 0.75% avg | ~$18,600 avg |
| Mar–May 2017 | ~33,500 avg | 0.93% avg | ~$27,500 avg |
| Jun–Jul 2017 | ~36,700 avg | 0.77% avg | ~$29,100 avg |

Sessions grew **56%** over 12 months. Conversion rate fell **54%**. Revenue peaked in August 2016 and never recovered. The SEO programme is ranking for more queries — but those queries are increasingly non-commercial. Without a content strategy reset toward transactional intent, this gap will continue to widen.

<br>

### ✅ Referral — Consistent Excellence

Referral never dropped below **3.82% conversion** in any single month of the dataset. December 2016 peaked at 6.74% CR and $79,775 revenue. This is a channel that performs above benchmark every month regardless of season — the rarest and most valuable asset in a marketing mix.

<br>

### 📈 Paid Search — Quietly Improving

| Month | Conversion Rate |
|---|---|
| Jan 2017 | 1.18% |
| Feb 2017 | 1.17% |
| Apr 2017 | 2.27% |
| Jun 2017 | 1.82% |
| Jul 2017 | **2.52%** ← highest month recorded |

An improving trend at the moment a channel is identified as underfunded is the signal to increase budget before efficiency plateaus.

<br>

### 🔎 Display — Sporadic High-Value Spikes

| Month | Sessions | Revenue | Implied Avg Transaction |
|---|---|---|---|
| Mar 2017 | 411 | $9,158 | ~$1,526 |
| Apr 2017 | 209 | $42,713 | ~$3,883 |
| Other months | 400–800 | $694–$2,900 | $50–$200 |

The spikes are driven by a small number of very high-value purchases — likely enterprise or B2B buyers — not consistent campaign performance. This is the key reason to decompose performance before scaling spend.

<br>

**Seasonality:** Referral and Paid Search peak in December (Q4 gifting). Organic Search does not follow Q4 seasonality — its best month was August 2016 — suggesting the site does not rank for seasonal commercial queries.

---

## 📱 Device Breakdown

Mobile e-commerce conversion rates are typically 50–70% lower than desktop across the industry. This analysis tests whether device friction explains the channel-level underperformance identified above.

<br>

### Mobile vs. Desktop Conversion Gap

| Channel | Desktop CR% | Mobile CR% | Mobile Penalty | Mobile % of Sessions |
|---|---|---|---|---|
| Referral | 5.58% | 0.20% | −96% | 4.8% |
| Display | 3.11% | 0.65% | −79% | 24.6% |
| Direct | 2.22% | 0.46% | −79% | 34.6% |
| Paid Search | 2.91% | 0.88% | −70% | 41.6% |
| Organic Search | 1.20% | 0.44% | −63% | 30.8% |
| Social | 0.06% | 0.02% | −67% | 10.2% |

<br>

### Full Device Breakdown

| Channel | Device | Sessions | CR% | Revenue | RPS | Bounce% |
|---|---|---|---|---|---|---|
| Referral | Desktop | 99,149 | 5.58% | $650,517 | $6.56 | 24.96% |
| Referral | Mobile | 5,032 | 0.20% | $698 | $0.14 | 44.00% |
| Direct | Desktop | 88,109 | 2.22% | $409,271 | $4.65 | 45.48% |
| Direct | Mobile | 49,537 | 0.46% | $24,282 | $0.49 | 56.67% |
| Display | Desktop | 4,565 | 3.11% | $77,542 | **$16.99** | 33.36% |
| Display | Mobile | 1,538 | 0.65% | $796 | $0.52 | 41.68% |
| Organic Search | Desktop | 245,764 | 1.20% | $301,294 | $1.23 | 47.85% |
| Organic Search | Mobile | 117,635 | 0.44% | $19,069 | $0.16 | 49.61% |
| Paid Search | Desktop | 12,674 | 2.91% | $37,030 | $2.92 | 32.80% |
| Paid Search | Mobile | 10,546 | 0.88% | $4,741 | $0.45 | 42.41% |
| Social | Desktop | 199,305 | 0.06% | $4,627 | $0.02 | 65.70% |
| Social | Mobile | 23,040 | 0.02% | $176 | $0.01 | 61.18% |

<br>

### Key Findings

**Referral's strength is entirely a desktop story.** 94.6% of Referral sessions are desktop. The 5.29% headline CR is almost entirely generated by desktop behaviour. Mobile Referral converts at just 0.20%. Any scaling plan driving mobile-heavy traffic will produce dramatically lower performance than the headline average suggests. Partnership development must prioritise desktop-first channels.

**Organic Search has a compounded problem.** Desktop Organic converts at 1.20% — still 40% below the 2% benchmark. Mobile converts at 0.44%. Fixing mobile organic adds ~$83,000 annually. Fixing desktop organic to benchmark adds ~$214,000. The bigger prize is a content strategy reset, not a mobile UX programme.

**Social fails on every device.** Desktop Social: 0.06%. Mobile Social: 0.02%. Both are functionally zero. This rules out UX friction as the root cause — it is an audience intent problem, not a device problem. No mobile optimisation will fix this.

**Display desktop generates $16.99 revenue per session** — 10x the site average and the highest RPS of any channel-device combination in the dataset — from only 4,565 sessions. This is the clearest scaling signal in the analysis.

**Paid Search desktop converts at 2.91%** — above benchmark. Applying negative mobile bid adjustments concentrates spend on the 2.91% desktop rate rather than blending it down with the 0.88% mobile rate.

---

## 🔗 Traffic Source Deep Dive

Channel grouping hides the detail that drives real decisions. This analysis goes one level deeper to the specific sources sending traffic — and uncovers the most important finding in the project.

| Source / Medium | Sessions | CR% | Revenue | RPS | AOV | Bounce% |
|---|---|---|---|---|---|---|
| (direct) / (none) | 371,467 | 2.47% | $1,190,175 | $3.20 | $129.93 | 41.80% |
| google / organic | 227,668 | 0.95% | $202,496 | $0.89 | $93.14 | 48.94% |
| dfa / cpm | 5,686 | 2.32% | $76,928 | $13.53 | $582.79 | 36.07% |
| google / cpc | 13,078 | 1.90% | $25,177 | $1.93 | $101.52 | 37.01% |
| mail.google.com / referral | 1,457 | 4.80% | $23,328 | $16.01 | $333.26 | 37.54% |
| dealspotr.com / referral | 528 | 7.58% | $5,691 | $10.78 | $142.27 | 51.33% |
| facebook.com / referral | 2,296 | 1.09% | $1,138 | $0.50 | $45.51 | 52.09% |
| l.facebook.com / referral | 795 | 3.77% | $1,044 | $1.31 | $34.79 | 63.14% |
| bing / organic | 1,529 | 1.37% | $988 | $0.65 | $47.03 | 41.79% |
| Partners / affiliate | 16,403 | 0.05% | $597 | $0.04 | $66.38 | 53.05% |
| youtube.com / referral | 212,602 | 0.01% | $314 | $0.0015 | $28.55 | 65.99% |

<br>

### Key Findings

**🔴 Social is not broken — YouTube is.**

YouTube accounts for 212,602 of Social's 226,117 sessions (94%) at $0.0015 per session, generating just $314 in annual revenue. Facebook referral within the exact same Social channel converts at 1.09%. Facebook's link-sharing service (`l.facebook.com`) converts at 3.77% — above the benchmark floor. The Social channel's near-zero average is a YouTube problem, not a Social problem. The recommendation is to restructure YouTube's role specifically — repositioned as brand awareness measured on reach and assisted conversion, not last-click revenue.

<br>

**🟢 Display is powered by a single programmatic platform.**

`dfa / cpm` (DoubleClick for Advertisers / Google DV360) is the only meaningful source behind Display's performance — $582.79 AOV, 2.32% CR, $13.53 RPS. This introduces concentration risk: any platform change removes the entire $76,928 contribution instantly. Before scaling, identify which campaigns, creatives, and audiences produce the $582 AOV buyer. Test a second platform to reduce single-source dependency.

<br>

**🟢 mail.google.com is the highest-efficiency source in the dataset.**

At $16.01 RPS and $333.26 AOV from 1,457 sessions — 3.5x the site average AOV — Gmail referral outperforms every source on a per-session basis yet receives only 1,457 sessions annually. Whether this traffic originates from email campaigns or organic Gmail sharing, it is a clear and underutilised investment opportunity.

<br>

**🟡 dealspotr.com delivers the highest conversion rate of any source at 7.58%.**

Deal-motivated buyers with strong purchase intent. Strategic risk: without cohort-level repeat purchase data, scaling deal traffic may train customers to wait for promotions rather than purchasing at full price, eroding long-term margin.

---

## 🌍 Geographic Performance

| Country | Sessions | CR% | Revenue | RPS | AOV | Bounce% |
|---|---|---|---|---|---|---|
| United States | 364,744 | 3.14% | $1,452,441 | $3.98 | $126.96 | 35.00% |
| Canada | 25,869 | 0.77% | $32,825 | $1.27 | $164.95 | 36.84% |
| Venezuela | 2,132 | 7.18% | $13,375 | $6.27 | $87.42 | 55.25% |
| Japan | 19,731 | 0.09% | $6,729 | $0.34 | $373.83 | 57.50% |
| Kenya ⚠️ | 771 | 0.39% | $5,269 | $6.83 | $1,756.23 | 55.90% |
| Nigeria ⚠️ | 1,446 | 0.14% | $3,302 | $2.28 | $1,651.20 | 66.32% |
| Taiwan | 12,996 | 0.15% | $1,921 | $0.15 | $101.10 | 52.29% |
| Indonesia | 9,273 | 0.19% | $1,840 | $0.20 | $102.24 | 61.66% |
| Australia | 12,698 | 0.10% | $1,745 | $0.14 | $134.25 | 55.02% |
| United Kingdom | 37,393 | 0.05% | $1,689 | $0.05 | $88.92 | 61.11% |
| Mexico | 13,225 | 0.15% | $1,593 | $0.12 | $79.64 | 61.66% |
| Hong Kong | 4,718 | 0.19% | $1,468 | $0.31 | $163.11 | 55.32% |
| Puerto Rico | 732 | 1.50% | $1,203 | $1.64 | $109.35 | 38.66% |
| Belgium | 4,442 | 0.11% | $992 | $0.22 | $198.41 | 60.31% |
| Singapore | 7,172 | 0.15% | $843 | $0.12 | $76.64 | 54.77% |

*⚠️ Kenya (3 transactions) and Nigeria (2 transactions) — AOV figures not statistically meaningful at this sample size. Likely single B2B purchases.*

<br>

### Revenue Concentration

| Geography | Revenue | Share |
|---|---|---|
| United States | $1,452,441 | 94.3% |
| Rest of World (combined) | $87,630 | 5.7% |

<br>

### Key Findings

**🔴 Revenue is critically concentrated in one market.**

A 10% US revenue decline loses $145,244 — more than the entire international portfolio generates. The US is the only country converting at industry benchmark (3.14%), confirming the underperformance everywhere else is a structural access problem, not a product problem.

<br>

**🟢 Canada is the most actionable expansion opportunity.**

Same language, adjacent market, $164.95 AOV (30% higher than the US), yet converting at only 0.77%. Barriers are almost certainly logistical: USD pricing and US-only shipping. Revenue opportunity at 1.5% conversion = ~$31,000 incremental annually from existing traffic. At US benchmark = ~$61,000+. Addressable through pricing localisation, not additional acquisition spend.

<br>

**🟡 The United Kingdom is a structural opportunity, not a demand problem.**

The UK is the fourth largest traffic source with 37,393 sessions but converts at 0.05% — lower than the Social channel average. Puerto Rico (a US territory with US shipping and USD pricing) converts at 1.50% from the same dataset — confirming the UK's barrier is logistical, not brand-related. Revenue opportunity at US benchmark conversion: **$104,000 annually from existing traffic**, requiring localisation investment rather than additional media spend.

<br>

**🟡 Japan shows the classic localisation pattern.**

19,731 sessions, 0.09% CR, $373.83 AOV — nearly 3x the US average. The 57.5% bounce rate indicates visitors leaving immediately at the landing page, consistent with a language barrier at entry. A Japanese-language checkout is the single highest-impact localisation investment available.

<br>

**Venezuela's 7.18% conversion rate is the highest of any country** — above Referral's overall 5.29% — from 2,132 sessions. Source of this high-intent traffic requires investigation before any investment decision.

---

## 🏆 Channel ROI Scorecard

All channels scored against a consistent priority framework based on conversion rate and revenue per session relative to the site average.

<br>

### Priority Framework

| Label | Criteria |
|---|---|
| 🟢 PROTECT | CR above 2% AND revenue per session above site average ($1.70) |
| 🔵 GROW | CR above 1% AND revenue per session above site average |
| 🟡 INVESTIGATE | Sessions above 50,000 AND CR above 0.5% — large audience with fixable underperformance |
| 🔴 CUT OR OPTIMISE | Low conversion and low revenue per session, or high volume with near-zero revenue |

<br>

### Final Scorecard

| Priority | Channel | Sessions | CR% | Revenue | RPS | AOV | Bounce% |
|---|---|---|---|---|---|---|---|
| 🟢 PROTECT | Display | 6,262 | 2.43% | $78,337 | $12.51 | $515.38 | 35.87% |
| 🟢 PROTECT | Referral | 104,838 | 5.29% | $651,430 | $6.21 | $117.52 | 25.98% |
| 🔵 GROW | Direct | 143,026 | 1.55% | $434,841 | $3.04 | $195.96 | 49.56% |
| 🔵 GROW | Paid Search | 25,326 | 1.89% | $43,559 | $1.72 | $90.94 | 38.01% |
| 🟡 INVESTIGATE | Organic Search | 381,561 | 0.94% | $326,381 | $0.86 | $91.14 | 48.32% |
| 🔴 CUT OR OPTIMISE | Social | 226,117 | 0.06% | $4,917 | $0.02 | $37.53 | 65.24% |
| 🔴 CUT OR OPTIMISE | Affiliates | 16,403 | 0.05% | $597 | $0.04 | $66.38 | 53.05% |

**Site average RPS: $1.70 &nbsp;·&nbsp; Industry benchmark CR: 2–4%**

---

## 💰 Budget Reallocation Recommendation

<br>

### 🟢 PROTECT — Display and Referral

Display and Referral are non-negotiable. Display generates $12.51 per session — 7x the site average — with a $515 average order value. It has identified a high-intent audience through programmatic targeting that no other channel has matched. Scale carefully: identify which campaigns and audience segments produce the $515 AOV buyer before increasing media spend. **Risk:** performance is concentrated in one platform (DFA). A second platform test is required before significant scaling.

Referral converts at 5.29% with a 25.98% bounce rate — the most structurally sound channel in the mix, performing above benchmark every month without exception. Invest in growing partnerships actively. **Key risk:** 95% of Referral sessions are desktop-driven. New partnerships driving mobile-heavy traffic will produce substantially lower performance than the headline suggests.

<br>

### 🔵 GROW — Direct and Paid Search

Direct generates $3.04 per session with the highest AOV at $195.96. The investment is not in the channel itself — it cannot be bought — but in what creates it: retention email, loyalty programmes, and repeat purchase incentives that convert one-time buyers into returning direct customers.

Paid Search is the clearest scalable opportunity: 1.89% CR approaching benchmark, $1.72 RPS above site average, and only 2.8% of total traffic. **Action:** increase bids on high-commercial-intent keywords; apply negative mobile bid adjustments to concentrate spend on desktop where Paid Search converts at 2.91% vs 0.88% on mobile.

<br>

### 🟡 INVESTIGATE — Organic Search

Organic Search is not a cut target — it is the largest single revenue opportunity in the business. Sessions grew 56% year-on-year while conversion rate fell from 1.53% to 0.71%.

**Quantified opportunity:** improving conversion from 0.94% to 2% represents **$364,000 in incremental annual revenue from traffic already arriving**, requiring a content strategy investment rather than additional acquisition spend. This is an intent-targeting problem, not a traffic volume problem.

<br>

### 🔴 CUT OR OPTIMISE — Social and Affiliates

Social drives 25% of all sessions at $0.02 per visitor. This is a YouTube-specific problem: YouTube sends 94% of Social's sessions at $0.0015 RPS, while Facebook within the same channel converts at 1–3.8%. **Action:** restructure YouTube's role from direct-response to brand awareness, measured on reach and assisted conversion, with a significantly reduced direct-revenue budget. Facebook social spend demonstrates meaningful conversion and should not be cut.

Affiliates produced 9 transactions over 12 months. Pause immediately. Audit partner quality and incentive structure before recommitting any spend.

<br>

> **Net outcome:** Moving budget from Social (YouTube-specific) and Affiliates to Paid Search and Display shifts capital from channels generating $0.02–$0.04 per session to channels generating $1.72–$12.51 per session — reducing spend by 20% while improving overall return on investment simultaneously.

---

## 📊 Power BI Dashboard

| Visual | Description |
|---|---|
| 1. Channel Revenue Scorecard | Cards — Total Revenue ($1.54M), Sessions (903K), Overall CR (1.34%), Top Channel by Revenue (Referral), Top Channel by RPS (Display) |
| 2. Channel Comparison Bar Chart | Sessions vs Revenue by channel with secondary axis for Conversion Rate — exposes the sessions/revenue gap visually |
| 3. Monthly Trend Line | Revenue over time per top-4 channel — shows Referral's seasonal peaks and Organic Search's structural decline |
| 4. Device × Channel Heat Map | Matrix: Rows = channels, Columns = device, Values = CR% — conditional formatting reveals desktop-only performance stories |
| 5. ROI Scorecard Table | All channels with Sessions, CR%, Revenue, RPS, AOV, and PROTECT / GROW / INVESTIGATE / CUT priority label |

---

## ⚠️ Limitations and Caveats

**Last-click attribution only.** Channels appearing early in the customer journey have their true contribution understated. A multi-touch attribution model would redistribute credit and likely raise the assisted conversion value of Social and Display.

**No cost data.** Revenue per session is a proxy for ROI efficiency, not true ROAS. Referral and Organic would likely improve in true ROI terms given their low or zero incremental media cost.

**Partial August 2017 data.** Only the first day of August 2017 is captured. Excluded from trend analysis to avoid false cliff-drop readings.

**Kenya and Nigeria AOV outliers.** Both show AOV above $1,600 from 2–3 transactions — not statistically meaningful. Likely single B2B purchases.

**Source/medium vs. channelGrouping.** These dimensions use different attribution models and do not reconcile perfectly. Source/medium is used for granular source diagnosis, not for reconciling channel revenue totals.

---

## 📐 Key Benchmarks

| Metric | Industry Benchmark | This Dataset |
|---|---|---|
| Conversion Rate | 2–4% | 1.34% overall |
| Bounce Rate — good | Under 50% | Varies by channel |
| Bounce Rate — excellent | Under 40% | Referral: 25.98% |
| Email conversion rate | 4–6% | mail.google.com: 4.80% |
| Mobile vs desktop CR gap | 50–70% lower on mobile | Up to 96% lower (Referral) |
| Site average RPS | Varies | $1.70 |

---

## 🛠️ Tools

| Tool | Usage |
|---|---|
| BigQuery Standard SQL | 7 analyses — wildcard tables, CTEs, window functions, CASE WHEN decision framework |
| Power BI Desktop | 5-visual executive dashboard |
| Google Analytics Sample Dataset | Public BigQuery dataset — real session-level e-commerce data |

---

*Project 4 of 5 — E-Commerce Analytics Portfolio*

*Built to demonstrate mid-level e-commerce analyst capability in SQL, business thinking, and data-driven budget recommendation*

---

*Project 4 of 5 — E-Commerce Analytics Portfolio*  
*Built to demonstrate mid-level e-commerce analyst capability in SQL, business thinking, and data-driven budget recommendation*
````
