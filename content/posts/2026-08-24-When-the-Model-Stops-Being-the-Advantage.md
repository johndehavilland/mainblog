---
title: When the Model Stops Being the Advantage
tags: 
date: '2026-08-24'
draft: 'false'
---

For the last several years, AI advantage has largely been determined by access to infrastructure, training compute, and frontier foundation models. That equation is starting to change.

Thomson Reuters [launched](https://www.thomsonreuters.com/en/press-releases/2026/august/thomson-reuters-leverages-its-world-class-data-assets-to-launch-its-own-frontier-model) their own frontier model yesterday. They are calling it "Thomson", no surprise there but what is most interesting is this could represent a paradigm shift. What they have done is demonstrated and built a repeatable model factory taking strong open-weight models and systematically improving them using their data, expertise, evaluation frameworks, and alignment techniques.

I think this is fascinating and a huge potential opportunity for enterprises sitting on propriatary data. In this AI driven world, data reigns supreme and building your own frontier model could result in newer sources of revenue and unlock greater innovation.

Organizations that possess unique proprietary data and deep domain expertise now have a viable path to creating highly differentiated models tailored to their industry. In many cases, these models may prove more valuable for specialized use cases than general-purpose frontier models because they are optimized around knowledge and context that broader models were never designed to capture.

The Thomson Reuters team published a [detailed technical report](https://www.thomsonreuters.com/content/dam/ewp-m/documents/thomsonreuters/en/pdf/reports/thomson-technical-report.pdf) on the work they did. Starting from a strong, open-weight foundation (Qwen3.6-35B), they focused on building an economically impactful model with a focus on professional work across legal, tax and journalism domains and initial benchmark results show strong results, putting this model (for this domain) squarely in competition with models from the leading frontier companies.

{{< figure src="/images/per-category.jpeg" caption="Per Category score improvements" >}}

One aspect that is relevant here is that they found that continual learning is the core innovation. Instead of traditional fine-tuning or prompt engineering, Thomson uses a full model improvement pipeline that enhances capabilities while minimizing the "forgetting" problem that often occurs during specialization.

They were also able to move relatively fast - getting the first production models of this out the door in 3 months from initial experimentation.

This demonstrates that organizations can start with a strong open-weight foundation model and use their proprietary data, evaluation frameworks, and domain expertise to create AI systems that are far more aligned to their business than relying solely on general-purpose models. More importantly, it suggests that the ability to build and continuously improve these systems may become a strategic capability in its own right.

Regulated industries stand to benefit disproportionately. The approach is particularly relevant for legal, tax, financial, government, and professional-services organizations that require control over data privacy, compliance, and domain-specific knowledge. 

To me, this isn't really a story about Thomson Reuters launching a model. It's a story about where AI is going. The barriers to access powerful models continue to fall, which means competitive advantage is shifting elsewhere. The organizations that win will be the ones that combine their unique data, expertise, and business processes to create something others can't easily replicate.