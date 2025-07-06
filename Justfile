RESUME_DIR := "resume"

default:
    just --list

# Compile resume
compile-resume:
    @echo "Compiling..."
    pdflatex -output-directory "{{ RESUME_DIR }}" "{{ RESUME_DIR }}/resume.tex"

compile-resume-watch:
    echo "{{ RESUME_DIR }}/resume.tex" | entr pdflatex "{{ RESUME_DIR }}/resume.tex"
