---
company: "Scatter Lab"
country: "South Korea"
sector: "AI / Consumer Technology"
outcome: "failure"
year: "2021"
lane: "a"
logged_at: "2026-08-25T06:00:00Z"
sources:
  - name: "TechCrunch — South Korea's Scatter Lab shuts down AI chatbot Iruda after privacy and hate speech controversy"
    url: "https://techcrunch.com/2021/01/11/south-koreas-scatter-lab-shuts-down-ai-chatbot-iruda-after-privacy-and-hate-speech-controversy/"
    date: "2021-01-11"
  - name: "MIT Technology Review — A chatbot trained on KakaoTalk messages violated privacy and spewed hate speech"
    url: "https://www.technologyreview.com/2021/01/29/1017406/ai-chatbot-iruda-korea-transgender/"
    date: "2021-01-29"
  - name: "Korea Herald — PIPC fines Scatter Lab 103M won for Iruda data breach"
    url: "http://www.koreaherald.com/view.php?ud=20210428000909"
    date: "2021-04-28"
---

## One-liner

Seoul-based Scatter Lab launched its AI companion chatbot Iruda in December 2020, only to pull it offline within three weeks after regulators found it was trained on private KakaoTalk messages without proper consent and that its outputs contained hate speech targeting LGBTQ people and people with disabilities.

## What happened

Scatter Lab, founded in 2016, built a consumer analytics app called "Science of Love" that helped users analyse their own KakaoTalk chat histories for relationship patterns. The company quietly used tens of billions of those messages — collected from real users — to train its conversational AI model, Iruda (이루다), a 20-year-old female persona chatbot. Iruda launched on December 23, 2020 and attracted 750,000 users in its first week, making it one of the fastest-growing Korean consumer AI products to that point.

Within days, users noticed Iruda producing anti-LGBTQ statements and expressing hostility toward people with disabilities when prompted. Screenshots spread on Twitter and online communities. A second wave followed: researchers identified that Iruda would sometimes reproduce verbatim fragments of real users' private conversations — including names, addresses, and personal details — proving the training corpus contained insufficiently anonymised personal data.

On January 11, 2021, Scatter Lab suspended Iruda. South Korea's Personal Information Protection Commission (PIPC) launched an investigation. In April 2021 the PIPC fined Scatter Lab 103.3 million won (roughly $88,000 USD) for collecting personal data without adequate disclosure and for using it in a downstream AI training pipeline that users had not consented to. Scatter Lab later relaunched "Iruda 2.0" in late 2021 with differential privacy safeguards, but the product never regained its initial growth trajectory.

## Key decisions / turning points

- **Training on production chat logs without granular consent**: Science of Love's terms permitted Scatter Lab to use data for "service improvement," a clause the PIPC ruled was too vague to cover large-scale AI model training — a distinction that was, at the time, not yet codified in law anywhere in the world.
- **No adversarial red-teaming before launch**: Iruda went public without systematic bias testing or data-leakage probing, leaving a 750,000-person live audience to surface both problems simultaneously under press scrutiny.
- **Urgency to ship ahead of rivals**: Scatter Lab appears to have compressed its safety review in order to launch before competing Korean AI companion products; the business logic accelerated the reputational catastrophe.
- **Relaunch rather than fold**: The company chose to invest in privacy-preserving training (differential privacy) and attempt a second launch; the reputational damage was, however, lasting enough to prevent a return to early-2021 growth.

## Why it matters (pattern / lesson)

Iruda is East Asia's earliest and most-cited case of an AI companion product collapsing over training-data privacy violations. It predated most Western regulatory and public debate about LLM training data consent by nearly two years. South Korea's PIPC enforcement set a regional precedent for treating AI model training as a standalone data-processing activity fully subject to GDPR-equivalent consent requirements — not merely a downstream use of already-collected data. The case is cited in South Korea's AI Basic Act (passed 2024) as a reference point for why model-training consent must be explicit and purpose-specific, not bundled into broad service-improvement clauses.

## Sources
- [TechCrunch — South Korea's Scatter Lab shuts down AI chatbot Iruda after privacy and hate speech controversy](https://techcrunch.com/2021/01/11/south-koreas-scatter-lab-shuts-down-ai-chatbot-iruda-after-privacy-and-hate-speech-controversy/) — 2021-01-11
- [MIT Technology Review — A chatbot trained on KakaoTalk messages violated privacy and spewed hate speech](https://www.technologyreview.com/2021/01/29/1017406/ai-chatbot-iruda-korea-transgender/) — 2021-01-29
- [Korea Herald — PIPC fines Scatter Lab 103M won for Iruda data breach](http://www.koreaherald.com/view.php?ud=20210428000909) — 2021-04-28
