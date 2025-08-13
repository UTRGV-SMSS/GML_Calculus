
#!/usr/bin/env bash
set -euo pipefail

REPO_DIR=${1:-specs-grading-calc1}
mkdir -p "$REPO_DIR"
cd "$REPO_DIR"

# Write files
cat > _config.yml <<'YAML'
title: Specifications Grading in Calculus I
description: Ongoing project to implement, study, and share materials for specifications grading in Calculus I.
theme: null
remote_theme: just-the-docs/just-the-docs
url: ""
search_enabled: true
plugins:
  - jekyll-seo-tag
kramdown:
  input: GFM
  hard_wrap: false
nav_sort: case_insensitive
markdown: kramdown
aux_links:
  "University Math Department":
    - "https://example.edu/math"
  "GitHub Repository":
    - "https://github.com/your-org-or-user/your-repo"
YAML

mkdir -p pages/materials pages/outputs assets/files

cat > index.md <<'MD'
---
layout: default
title: Home
nav_order: 1
---

# Specifications Grading in Calculus I

Welcome! This site documents our ongoing project to implement and study **Specifications Grading (Specs)** in *Calculus I* at our Hispanic-Serving Institution.

**What is Specs Grading?** Student work is evaluated against clear, binary criteria (*Satisfactory / Needs Revision*) aligned to transparent **Learning Targets**. Final grades are earned by completing target bundles rather than accumulating partial credit. The approach emphasizes mastery, equity, revision opportunities, and student agency.

**Why this project?** We aim to increase transparency and mastery, reduce ambiguity around grading, and support students’ mathematical identity and persistence. Our implementation integrates: (1) clearly labeled learning targets, (2) specs-aligned exams and readiness checks, (3) structured revision opportunities (e.g., proctored retesting “Carnival Days”), and (4) ongoing evaluation of student outcomes and perceptions.

**Timeline.** Piloted in 2023–2024; scaled and refined in 2024–2025; ongoing dissemination in 2025–present (talks, papers, workshops, and public materials).

**Highlights & Quick Downloads**
- **Overview (PDF):** one-page visual summary of the specs model → [Download](/assets/files/Overview.pdf)
- **Learning Targets F2025 (PDF):** the full list of targets used in the course → [Download](/assets/files/LearningTargetsF2025.pdf)
- **Lecture Schedule F2025 (PDF):** week-by-week plan integrating targets, PLTL, and WeBWorK → [Download](/assets/files/Cal1LectureSchedule-Fall2025.pdf)
- **Sample Syllabus (DOCX):** example syllabus illustrating specs grading policies → [Download](/assets/files/SampleSyllabus.docx)
- **Paper (PDF):** *Shaping Mathematics Identity: Specifications Grading in Calculus I at an HSI* → [Download](/assets/files/ShapingMathematicsIdentity_SpecsCalcI_HSI.pdf)
MD

cat > pages/project.md <<'MD'
---
layout: default
title: About the Project
nav_order: 2
has_children: false
permalink: /pages/project
---

# About the Project

**Goal.** Implement and study Specifications Grading in Calculus I to improve mastery, equity, and transparency in assessment.

**Scope.**
1. Define clear *learning targets* aligned to outcomes.
2. Design *specs-aligned assessments* (quizzes, exams, readiness checks).
3. Establish *revision opportunities* (proctored retesting) and *readiness checks*.
4. Collect and analyze *student outcomes* and *perception data*.
5. Share materials and results with the wider community.

## Team
- Add names and roles here.

## Timeline
- **2023–2024:** Pilot and iteration.
- **2024–2025:** Scaling and formal evaluation.
- **2025–:** Dissemination (talks, papers, workshops).
MD

cat > pages/materials.md <<'MD'
---
layout: default
title: Materials
nav_order: 3
has_children: true
permalink: /pages/materials
---

# Materials

## Learning Targets F2025 (PDF)
A comprehensive list of learning targets for Calculus I organized by concept and assessment alignment. Targets are tagged to assessments and practice (PLTL, WeBWorK).  
[Download the PDF](/assets/files/LearningTargetsF2025.pdf)

## Calculus I Lecture Schedule — Fall 2025 (PDF)
Week-by-week mapping of textbook sections, videos, PLTL activities, and WeBWorK assignments to learning targets.  
[Download the PDF](/assets/files/Cal1LectureSchedule-Fall2025.pdf)

## Sample Syllabus (DOCX)
An example syllabus integrating specifications grading, growth mindset practices, revision policies, and course expectations.  
[Download the DOCX](/assets/files/SampleSyllabus.docx)

## Rubrics
Add rubric files to `assets/files/` and link them here.
MD

cat > pages/outputs.md <<'MD'
---
layout: default
title: Outputs
nav_order: 4
has_children: true
permalink: /pages/outputs
---

# Outputs

## Shaping Mathematics Identity: Specifications Grading in Calculus I at an HSI (PDF)
Peer-reviewed article on the impact of specifications grading on students’ mathematical identity at an HSI.  
[Download the PDF](/assets/files/ShapingMathematicsIdentity_SpecsCalcI_HSI.pdf)

## Overview (PDF)
Concise, visual orientation to the specs model—binary criteria, mastery bundles, revision, and alignment with outcomes.  
[Download the PDF](/assets/files/Overview.pdf)

## Presentations & Posters
Add slides and posters here as they’re produced.
MD

cat > 404.md <<'MD'
---
layout: default
title: Page not found
nav_exclude: true
permalink: /404.html
---

# 404

Sorry, we couldn’t find that page.
MD

echo "Scaffold complete in $REPO_DIR"
echo "Next: put your files into assets/files/ and push to GitHub."
