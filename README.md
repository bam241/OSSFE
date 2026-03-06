# A Freelancer's Journey in Open Source Nuclear Software

Slides for my talk at the [OSSFE Conference](https://ossfe.github.io/),
Munich, 2025.

## Abstract

Over the past 4 years I have been offering my services as a freelance scientist.
During this time, I have worked for universities, startup companies and even
investment funds, doing a wide range of work such as bug fixing, best practices
development mentoring, large Pull Request submissions, conducting studies,
refactoring large pieces of software...

While I understand the need to internalize knowledge and experiences, and the
potential spending constraints, there is a possible added value of freelancers
in Open Source Scientific Simulation. I would be interested in walking you
through my scientific freelance journey, in order to raise awareness about our
relevancy.

## Repository Structure

~~~
presentation/
├── main.tex                    # Main LaTeX file
├── slides/                     # One file per slide
│   ├── 01_background.tex
│   ├── 02_BaM.tex
│   ├── 03_timeline.tex
│   ├── 04_studies.tex
│   ├── 05_features.tex
│   ├── 06_contributions.tex
│   ├── 07_practices.tex
│   ├── 08_generalist.tex
│   ├── 09_startups.tex
│   ├── 10_academia.tex
│   ├── 11_opensource.tex
│   ├── 12_challenges.tex
│   ├── 13_recipe.tex
│   └── 14_conclusion.tex
├── beamer_template/            # Beamer template (subrepository)
│   └── bam.tex
├── Makefile                    # Build system
├── README.md                   # This file
└── LICENSE                     # MIT License
~~~

## Requirements

- A LaTeX distribution (e.g. [TeX Live](https://www.tug.org/texlive/) or
  [MiKTeX](https://miktex.org/))
- The following LaTeX packages:
  - `beamer`
  - `tikz`
  - `fontenc`
  - `inputenc`
  - `lmodern`

## Build

~~~bash
# Compile the presentation
make

# Compile and open the PDF
make view

# Remove auxiliary files
make clean

# Remove everything including the PDF
make cleanall
~~~

The compiled PDF will be generated in the `build/` directory.

## Author

**Baptiste Mouginot**  
BaM Scientific Consulting  

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
````<span class="ml-2" /><span class="inline-block w-3 h-3 rounded-full bg-neutral-a12 align-middle mb-[0.1rem]" />